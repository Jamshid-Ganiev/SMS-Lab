#!/usr/bin/env python3

"""
This code has been developed by Jamshid Ganiev || 12200335
"""

import rospy
from std_msgs.msg import Float32

RPM = 60

def rpm_publisher():
    rospy.init_node('rpm_pub_node', anonymous=True)
    rpm_pub = rospy.Publisher('rpm', Float32, queue_size=10)
    rate = rospy.Rate(10) # 10hz
    rospy.loginfo("Publishing RPM...")
    while not rospy.is_shutdown():
        msg = Float32()
        msg.data = RPM
        rpm_pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        rpm_publisher()
    except rospy.ROSInterruptException:
        pass
