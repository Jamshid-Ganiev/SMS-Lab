#!/usr/bin/env python3

"""
This code has been developed by Jamshid Ganiev || 12200335
"""


import rospy
from std_msgs.msg import Float32

PI = 3.14159
RPM = 60

WHEEL_RADIUS = rospy.get_param("~wheel_radius", 0.125)

def rpm_callback(rpm):
    speed_pub = rospy.Publisher('speed', Float32, queue_size=10)
    speed_msg = Float32()
    # Speed = Circumference * Rev/s
    speed_msg.data = (2 * WHEEL_RADIUS * PI) * (rpm.data / RPM)
    speed_pub.publish(speed_msg)

def speed_calculator():
    rospy.init_node('speed_calc_node', anonymous=True)
    rospy.Subscriber('rpm', Float32, rpm_callback)
    rospy.spin()

if __name__ == '__main__':
    speed_calculator()



