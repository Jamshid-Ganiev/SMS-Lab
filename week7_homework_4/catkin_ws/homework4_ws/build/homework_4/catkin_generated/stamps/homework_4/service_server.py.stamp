#!/usr/bin/env python3

"""
This code has been developed by Jamshid Ganiev || 12200335
"""

import rospy
from homework_4.srv import OddEvenCheck, OddEvenCheckResponse

def determine_odd_even(req):
    remainder = req.number % 2
    res = OddEvenCheckResponse()

    if remainder == 1:
        res.answer = "Odd"
    elif remainder == 0:
        res.answer = "Even"
    else:
        return False
    return res

def odd_even_service_server():
    rospy.init_node('odd_even_service_server_node', anonymous=True)
    s = rospy.Service('odd_even_check', OddEvenCheck, determine_odd_even)
    rospy.loginfo("Odd Even Check Server Running...")
    rospy.spin()

if __name__ == '__main__':
    odd_even_service_server()

