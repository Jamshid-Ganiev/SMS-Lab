#!/usr/bin/env python

import rospy
from std_msgs.msg import Float32

WHEEL_RADIUS = None

def speed_pub(rpm):
    global WHEEL_RADIUS
    if WHEEL_RADIUS is not None:
        speed_msg = Float32()
        speed_msg.data = (2 * WHEEL_RADIUS * 3.14159) * (rpm.data / 60)
        speed_pub_pub.publish(speed_msg)
    else:
        rospy.logwarn("No value set for wheel_radius server parameter.")

def main():
    global WHEEL_RADIUS, speed_pub_pub
    rospy.init_node('speed_pub_node', anonymous=True)
    WHEEL_RADIUS = rospy.get_param("wheel_radius", None)
    if WHEEL_RADIUS is None:
        rospy.logwarn("No value set for wheel_radius server parameter.")
    rospy.Subscriber("rpm", Float32, speed_pub)
    speed_pub_pub = rospy.Publisher('speed', Float32, queue_size=10)
    rospy.loginfo("Publishing speed...")
    rospy.spin()

if __name__ == '__main__':
    main()
