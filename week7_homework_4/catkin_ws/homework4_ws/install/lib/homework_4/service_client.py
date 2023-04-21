#!/usr/bin/env python3


"""
This code has been developed by Jamshid Ganiev || 12200335
"""

import rospy
from homework_4.srv import OddEvenCheck
import sys

def odd_even_service_client():
    rospy.init_node('odd_even_service_client_node', anonymous=True)
    rospy.wait_for_service('odd_even_check')
    client = rospy.ServiceProxy('odd_even_check', OddEvenCheck)
    print("Type '0' to quit")
    while not rospy.is_shutdown():
        try:
            input_num = int(input("Enter an integer: "))
            if input_num == 0:
                rospy.loginfo("Terminating Application...")
                sys.exit()
            resp = client(input_num)
            rospy.loginfo(f"The number is {resp.answer}")
        except rospy.ServiceException as e:
            rospy.logerr("Service Call Failed!: %s"%e)

if __name__ == '__main__':
    odd_even_service_client()

