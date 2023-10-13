Draw_Pose
=========

This Project draw position that the overlap collision.

#!/usr/bin/env python

import rospy, time
import numpy as np
from sensor_msgs.msg import LaserScan
from std_msgs.msg import String
from xycar_msgs.msg import xycar_motor

GO = 5
ANG_GO = 3
BACK = -5
STOP = 0
ANGLE = [50, -50]

distance = []
angle_increment = None
lidar_data = None

# topic, message type
motor_msg = xycar_motor()
motorPublisher = rospy.Publisher('xycar_motor', xycar_motor, queue_size=1)

def lidarCallback(data):
    global distance, angle_increment, lidar_data
    lidar_data = data

def motor_pub(angle, speed):
    global motorPublisher
    global motor_msg
    motor_msg.angle = angle
    motor_msg.speed = speed
    motorPublisher.publish(motor_msg)

rospy.init_node('lidar_topic', anonymous=True)
rospy.Subscriber('/scan', LaserScan, lidarCallback, queue_size=1)

rate = rospy.Rate(3)
time.sleep(5.0)

left_down = {"x": -0.30, "y": 0.14}
right_up  = {"x": 0.30,  "y": 0.30}
lidar_setting = [505, np.sin, np.cos, -1.0, 1.0]
max_point = 3

while not rospy.is_shutdown():
    detect = 0
    l_cnt = 0
    r_cnt = 0
    y_list = []    

    for i in range(0, lidar_setting[0]):
        radian = i * lidar_data.angle_increment

        x = lidar_data.ranges[i] * lidar_setting[1](radian) * lidar_setting[3]
        y = lidar_data.ranges[i] * lidar_setting[2](radian) * lidar_setting[4]
        if y != 0.0:
            y_list.append(y)

        if ((x >= left_down["x"]) and (x <= right_up["x"]) and (y >= left_down["y"]) and (y <= right_up["y"])):
            detect += 1
            
            if((x >= left_down["x"]) and x < 0):
                l_cnt += 1
            elif((x <= right_up["x"]) and x > 0):
                r_cnt += 1
            
        else:
            detect -= 1
            if detect < 0:
                detect = 0

    if detect <= max_point:
        motor_pub(0, GO)
        rate.sleep()
        continue

    elif (l_cnt > 20 and r_cnt > 20):
        motor_pub(0, STOP)
        rate.sleep()
        continue
    
    else:
        if l_cnt > r_cnt:
            motor_pub(ANGLE[0], ANG_GO)
            rate.sleep()
            continue

        else:
            motor_pub(ANGLE[1], ANG_GO)
            rate.sleep()
            continue
        

