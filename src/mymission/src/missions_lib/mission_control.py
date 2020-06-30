#!/usr/bin/env python
# This ROS node is the state machine for the missions that control Robot
import sys
import rospy
import roslib; roslib.load_manifest('std_srvs')
import std_srvs.srv
from go_home import GoHomeStateMachine
from missions import MissionsStateMachine
from std_msgs.msg import String, Empty, Bool
from smach import State, StateMachine
from smach_ros import MonitorState, SimpleActionState, IntrospectionServer
from actionlib_msgs.msg import GoalStatus


# The Start state
class Start(State):
    def __init__(self):
        State.__init__(self, outcomes=['missions','go_home','done_task'], 
                       input_keys=['mission'],
                       output_keys=['mission_data','start'])    
    def execute(self, userdata):        
        # Based on the userdata either change state to the required mission or 
        # carry out single job userdata.mission contains the mission or single 
        # job and a number of parameters seperated by '^'
        retVal = 'done_task';
        
        # Split into parameters using '^' as the delimiter
        parameters = userdata.mission.split("^")
        rospy.logwarn(parameters)
        if parameters[0] == 'M1':
            # Mission 1 to search for a known person and deliver a message
            # parameter[1] contains filename of file containing poses for the patrol,
            # the id of the person to search for and the message to deliver            
            userdata.mission_data = parameters[1]
            retVal = 'missions'        
        elif parameters[0] == 'M2':
            # Mission 4 is go home. parameter[1] contains filename of file containing poses
            userdata.mission_data = parameters[1]
            retVal = 'go_home'

        return retVal
        

# The REPORT state
class Report(State):
    def __init__(self):
        State.__init__(self, outcomes=['success'], input_keys=['mission_status'])
        self.__pub = rospy.Publisher('/missions/mission_complete', String, queue_size=5)
    
    def execute(self, userdata):        
        # Publishes message that mission completed
        message = userdata.mission_status
        self.__pub.publish(message)
        return 'success'        

# ------------------------- Main class for state machine control -------------------------
#The work for each mission is another state machine
# in the 'mission' states
class MissionControlNode:
    def __init__(self):
        rospy.on_shutdown(self.ShutdownCallback)

        #Subscribe to message to cancel missions
        self.__cancel_sub = rospy.Subscriber('/missions/mission_cancel', Empty, 
                                            self.CancelCallback)  
        # ------------------------- Top level state machine -------------------------
        # Create top level state machine
        self.__sm = StateMachine(outcomes=['preempted','aborted'],                                 
                                 output_keys=['mission_data'])
        with self.__sm:                                   
            # Add a state which monitors for a mission to run            
            StateMachine.add('PreStart',
                            MonitorState('/missions/mission_request',#mission de string-msg-MissionRequestCB
                            String,
                            self.MissionRequestCB,                             
                            output_keys = ['mission']),
                            transitions={'valid':'PreStart', 'invalid':'Start', 
                                        'preempted':'preempted'})
                                
            # Add state to prepare the mission            
            StateMachine.add('Start',
                            Start(),                             
                            transitions={'missions':'MISSIONS', 'go_home':'GO_HOME',
                                         'done_task':'PreStart'})
                                
            # Add the reporting state
            StateMachine.add('REPORT',
                            Report(),
                            transitions={'success':'PreStart'})

            # ------------------------- Sub State machine for mission 1 ---------------------
            # Create a sub state machine for Missions
            self.__sm_missions = MissionsStateMachine()
              
            # Now add the sub state machine for Missions to the top level one
            StateMachine.add('MISSIONS', 
                            self.__sm_missions, 
                            transitions={'complete':'REPORT','preempted':'REPORT','aborted':'REPORT'}) 
              
            # ------------------------- Sub State machine for mission 4 ---------------------
            # Create a sub state machine for Go_Home 
            self.__sm_go_home = GoHomeStateMachine()
               
            # Now add the sub state machine for go_home to the top level one
            StateMachine.add('GO_HOME', 
                            self.__sm_go_home, 
                            transitions={'complete':'REPORT','preempted':'REPORT','aborted':'REPORT'})    
                
                
        # Create and start the introspective server so that we can use smach_viewer
        sis = IntrospectionServer('server_name', self.__sm, '/SM_ROOT')
        sis.start()
                                
        self.__sm.execute()
           
        # Wait for ctrl-c to stop application
        rospy.spin()
        sis.stop()
        
    
    # Monitor State takes /missions/mission_request topic and passes the mission
    # in user_data to the PREPARE state
    def MissionRequestCB(self, userdata, msg):                
        # Take the message data and send it to the next state in the userdata
        userdata.mission = msg.data       
                        
        # Returning False means the state transition will follow the invalid line
        return False
        
    # Callback for cancel mission message
    def CancelCallback(self, data):
        # If a sub statemachine for a mission is running then request it be preempted
        if self.__sm_missions.is_running():
            self.__sm_missions.request_preempt() 
        elif self.__sm_go_home.is_running():
            self.__sm_go_home.request_preempt()                   
        
    def ShutdownCallback(self):        
        self.__sm.request_preempt()
        # Although we have requested to shutdown the state machine 
        # it will not happen if we are in PreStart until a message arrives
        
def main(args):
    rospy.init_node('mission_control_node', anonymous=False)
    rospy.loginfo("mission control node started")
    rmn = MissionControlNode()        

if __name__ == '__main__':
    main(sys.argv)

                                