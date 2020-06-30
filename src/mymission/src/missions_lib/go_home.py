#!/usr/bin/env python
# Copyright 2019 Philip Hopley
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not 
# use this file except in compliance with the License. You may obtain a  copy
# of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software 
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations under
# the License.
#
# Statemachine that runs mission 4. Return to home location
import rospy
import yaml
import io
from smach import State, StateMachine
from smach_ros import SimpleActionState
from geometry_msgs.msg import PoseStamped
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from actionlib_msgs.msg import GoalStatus

# Child (derived) class. Parent class is StateMachine
class GoHomeStateMachine(StateMachine):
    def __init__(self):
        StateMachine.__init__(self, outcomes=['complete','preempted','aborted'], input_keys=['mission_data'], output_keys=['mission_status'])
        
        
        with self:
            # This state will prepare for the mission
            StateMachine.add('PREPARE_MISSION',
                             PrepareGoHome(),
                             transitions={'ready':'MOVE','error':'complete'})
                          
                                                    
            # This state uses an Action to move the robot to the required goal
            StateMachine.add('MOVE',
                             SimpleActionState('move_base',
                                               MoveBaseAction,
                                               goal_slots=['target_pose'],
                                               result_cb = self.moveComplete,
                                               output_keys=['mission_status']),
                             transitions={'succeeded':'complete', 'preempted':'preempted', 'aborted':'aborted'},
                             remapping={'target_pose':'destination'})                             
                             
                             
                                     
    def moveComplete(self, userdata, status, result):
        if status == GoalStatus.PREEMPTED:
            # Report with voice that the mission was cancelled
            message = 'Mission GO_HOME cancelled'

            
            # set the mission status
            userdata.mission_status = 'GO_HOME mission cancelled'
            
        elif status == GoalStatus.ABORTED:
            # Report with voice that the mission was aborted
            message = 'Warning GO_HOME aborted'
            
            # set the mission status
            userdata.mission_status = 'GO_HOME mission failed during base move action'
            
        elif status == GoalStatus.SUCCEEDED:
            userdata.mission_status = 'GO_HOME mission complete'
            

# PREPARE_MISSION State. Prepares the mission by loading the waypoint file
class PrepareGoHome(State):   
    def __init__(self):
        State.__init__(self, outcomes=['ready','error'],
                       input_keys=['mission_data'],
                       output_keys=['destination','mission_status'])
        
    def execute(self, userdata):
        # mission_data will contain the filename of the file containing the waypoints including the home waypoint        
        rospy.logwarn(userdata.mission_data)
        # Load the waypoints
        try:
            with open(userdata.mission_data, 'r') as stream:
                try:                   
                    waypoints = {'home': {'position': {'y': -7.0, 'x': 7.0}, 'orientation': {'y': 0.0, 'x': 0.0, 'z': 0.0, 'w': 1.0}}, 'w3': {'position': {'y': 1.14226484299, 'x': 22.167804718}, 'orientation': {'y': 0.0, 'x': 0.0, 'z': 0.999983862429, 'w': -0.00568109866196}}, 'w2': {'position': {'y': -6.23452758789, 'x': 16.3758583069}, 'orientation': {'y': 0.0, 'x': 0.0, 'z': 0.713871510631, 'w': 0.700276706959}}, 'w1': {'position': {'y': -6.34978628159, 'x': 13.2061405182}, 'orientation': {'y': 0.0, 'x': 0.0, 'z': 0.712211212733, 'w': 0.701965233083}}}
                    next_outcome = 'ready'
                    
                except:
                    rospy.logerr('Bad waypoint file')
                    userdata.mission_status = 'Bad waypoint file'
                    next_outcome = 'error'
        except:
            rospy.logerr("Can't open waypoint file")
            userdata.mission_status = "Can't open waypoint file"
            next_outcome = 'error'                    
        
        if next_outcome == 'ready':
            # Check the home waypoint exists
            if 'home' in waypoints:            
                # Copy the home waypoint data in to a PoseStamped message and userdata                            
                waypoint = waypoints['home']
        
                target_pose = PoseStamped()
            
                target_pose.header.frame_id = 'map'
                target_pose.pose.position.x = waypoint['position']['x']
                target_pose.pose.position.y = waypoint['position']['y']
                target_pose.pose.position.z = 0.0
                target_pose.pose.orientation.x = waypoint['orientation']['x']
                target_pose.pose.orientation.y = waypoint['orientation']['y']
                target_pose.pose.orientation.z = waypoint['orientation']['z']
                target_pose.pose.orientation.w = waypoint['orientation']['w']
            
                userdata.destination = target_pose                              
                rospy.logerr('Entro')
                rospy.logerr(target_pose.pose.orientation.x)
            else:
                rospy.logerr('No home waypoint in file')
                userdata.mission_status = 'No home waypoint in file'
                next_outcome = 'error'                  
    
        return next_outcome                                    

