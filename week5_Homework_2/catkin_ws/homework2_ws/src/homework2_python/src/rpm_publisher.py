#!/usr/bin/env python

import rospy
from std_msgs.msg import Float32

RPM = 60

def rpm_pub():
    pub = rospy.Publisher('rpm', Float32, queue_size=10)
    rospy.init_node('rpm_pub_node', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    rospy.loginfo("Publishing RPM...")
    while not rospy.is_shutdown():
        msg = Float32()
        msg.data = RPM
        pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        rpm_pub()
    except rospy.ROSInterruptException:
        pass
