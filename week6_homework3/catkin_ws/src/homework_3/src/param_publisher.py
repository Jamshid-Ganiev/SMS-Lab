#!/usr/bin/env python3

import rospy
from std_msgs.msg import Float64

if __name__ == '__main__':
    rospy.init_node('param_publisher')

    # Load the parameters from the parameter server
    start_odometer = rospy.get_param('~start_odometer')
    end_odometer = rospy.get_param('~end_odometer')

    # Calculate the trip distance
    trip_distance = end_odometer - start_odometer

    # Publish the trip distance to the 'trip_distance' topic
    pub = rospy.Publisher('trip_distance', Float64, queue_size=10)
    rate = rospy.Rate(10)  # 10 Hz
    while not rospy.is_shutdown():
        pub.publish(trip_distance)
        rate.sleep()