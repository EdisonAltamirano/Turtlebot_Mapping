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
# Statemachine that runs mission 1. Searches for a known person and
# delivers a message
import rospy
import yaml
import io
import threading
import os
from smach import State, StateMachine
from smach_ros import SimpleActionState
from geometry_msgs.msg import PoseStamped
from move_base_msgs.msg import MoveBaseAction
from std_msgs.msg import Empty
from actionlib_msgs.msg import GoalStatus

# Child (derived) class. Parent class is StateMachine
class  MissionsStateMachine(StateMachine):
    def __init__(self):
        StateMachine.__init__(self, outcomes=['complete','preempted','aborted'], input_keys=['mission_data'], output_keys=['mission_status'])

        
        with self:
              # This state will prepare for the mission
            StateMachine.add('PREPARE_MISSION',
                             PrepareMission(),
                             transitions={'ready':'PREPARE_TO_MOVE','error':'aborted','succeeded':'complete'})
                             
            # The next state prepares for each nav goal request
            StateMachine.add('PREPARE_TO_MOVE',
                             PrepareToMove(),
                             transitions={'done':'MOVE'},
                             remapping={'current_waypoint_in':'current_waypoint','current_waypoint_out':'current_waypoint',
                                        'waypoint_direction_in':'waypoint_direction','waypoint_direction_out':'waypoint_direction'})
                                        
            # This state uses an Action to move the robot to the required goal
            StateMachine.add('MOVE',
                             SimpleActionState('move_base',
                                               MoveBaseAction,
                                               goal_slots=['target_pose'],
                                               result_cb = self.moveComplete,
                                               output_keys=['mission_status']),
                             transitions={'succeeded':'PREPARE_MISSION', 'preempted':'preempted', 'aborted':'aborted'},
                             remapping={'target_pose':'destination'})

    def moveComplete(self, userdata, status, result):
        if status == GoalStatus.PREEMPTED:           
            # set the mission status
            userdata.mission_status = 'Navigation mission preempted'
            
        elif status == GoalStatus.ABORTED:
            # set the mission status
            userdata.mission_status = 'Navigation mission failed during base move action'                                                
                             
# PREPARE_TO_MOVE State. Reads the next waypoint to move the base to
class PrepareToMove(State):
    def __init__(self):
        State.__init__(self, outcomes=['done'],
                       input_keys=['waypoints','current_waypoint_in','waypoint_direction_in'],
                       output_keys=['current_waypoint_out','destination','waypoint_direction_out','start']) 
                       
    def execute(self, userdata):
        # Extract the next waypoint but which way along the waypoints are we travelling
        if userdata.waypoint_direction_in == True:
            # Incrementing along the waypoints
            next_waypoint = userdata.current_waypoint_in + 1
            waypoint_id = 'w' + str(next_waypoint)
            rospy.logwarn(waypoint_id) 
            # If next waypoint does not exist (reached end of list) we need to work backwards along the list
            if not waypoint_id in userdata.waypoints:
                next_waypoint = userdata.current_waypoint_in - 1
                userdata.waypoint_direction_out = False
                # Allow for only one waypoint
                if next_waypoint == 0:
                    next_waypoint = 1
                    
                # next waypoint updated so update the waypoint_id string
                waypoint_id = 'w' + str(next_waypoint)
        else:
            # Decrementing along the waypoints
            next_waypoint = userdata.current_waypoint_in - 1
            rospy.logwarn(next_waypoint)
            # If next point is now zero we have reach start of list and we need to work forwards along the list
            if next_waypoint == 0:
                next_waypoint = 1
                userdata.waypoint_direction_out = True
                
            waypoint_id = 'w' + str(next_waypoint)
                              
        # Copy the waypoint data in to a PoseStamped message and userdata                            
        waypoint = userdata.waypoints[waypoint_id]
         
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
        userdata.current_waypoint_out = next_waypoint
        
        # Once we reach the new destination we will start a new head scan so reset flag here
        userdata.start = True
        
        return 'done'
                             
# PREPARE_MISSION State. Prepares the mission by loading the waypoint file
class PrepareMission(State):   
    def __init__(self):
        State.__init__(self, outcomes=['ready','error','succeeded'],
                       input_keys=['mission_data'],
                       output_keys=['waypoints','current_waypoint','waypoint_direction','mission_status','start'])
        self.mygoals = 0

    def execute(self, userdata):
        # Parse the mission data using '|' as the delimiter        
        # parameters[0] will contain the filename of the file containing the poses
        # parameters[1] will contain the id of the person to search for
        # parameters[2] will contain the message to deliver
        parameters = userdata.mission_data.split("|")
        rospy.logwarn(parameters[0])
        
        if self.mygoals == 3:
            return 'succeeded'             

        self.mygoals = self.mygoals + 1

        # Load patrol poses from the given patrol file
        try:
            with open(userdata.mission_data, 'r') as stream:
                try:       
                    #rospy.logwarn(yaml.load(stream))              
                    userdata.waypoints = {'home': {'position': {'y': -7.0, 'x': 7.0}, 'orientation': {'y': 0.0, 'x': 0.0, 'z': 0.0, 'w': 1.0}}, 'w3': {'position': {'y': 1.14226484299, 'x': 22.167804718}, 'orientation': {'y': 0.0, 'x': 0.0, 'z': 0.999983862429, 'w': -0.00568109866196}}, 'w2': {'position': {'y': -6.23452758789, 'x': 16.3758583069}, 'orientation': {'y': 0.0, 'x': 0.0, 'z': 0.713871510631, 'w': 0.700276706959}}, 'w1': {'position': {'y': -6.34978628159, 'x': 13.2061405182}, 'orientation': {'y': 0.0, 'x': 0.0, 'z': 0.712211212733, 'w': 0.701965233083}}}
                    userdata.current_waypoint = self.mygoals
                    userdata.waypoint_direction = True  
                    userdata.mission_status = 'void' # This will be overwritten                  
                    next_outcome = 'ready'
                except:
                    rospy.logerr('Bad waypoint file')
                    userdata.mission_status = 'Bad waypoint file'
                    next_outcome = 'error'
        except:
            rospy.logerr("Can't open waypoint file")
            userdata.mission_status = "Can't open waypoint file"
            next_outcome = 'error'                    
        
        # Indicate that when we start scanning for faces that it is a new scan
        userdata.start = True   
    
        return next_outcome                                    
        
