#!/usr/bin/env python3

import rospy
from std_msgs.msg import Float64

def callback(data):
    rospy.loginfo('Received trip distance: %s', data.data)

if __name__ == '__main__':
    rospy.init_node('param_subscriber')

    # Subscribe to the 'trip_distance' topic
    sub = rospy.Subscriber('trip_distance', Float64, callback)

    rospy.spin()