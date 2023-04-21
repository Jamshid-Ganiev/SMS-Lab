#!/usr/bin/env python3

import rospy
from smart_city.msg import VehicleInfo

def speed_controller():
    rospy.init_node('speed_controller', anonymous=True)

    pub = rospy.Publisher('vehicle_speed', VehicleInfo, queue_size=10)

    while not rospy.is_shutdown():
        try:
            speed = float(input("Enter the vehicle speed: "))
            rospy.set_param("/vehicle_speed", speed)

            vehicle = VehicleInfo()
            vehicle.plate_number = "01-AA-777-UZB"
            vehicle.speed = speed

            pub.publish(vehicle)

        except ValueError:
            rospy.logwarn("Invalid input. Please enter a valid number for the speed.")

if __name__ == '__main__':
    try:
        speed_controller()
    except rospy.ROSInterruptException:
        pass
