#!/usr/bin/env python3

import rospy
from smart_city.msg import VehicleInfo

def speed_callback(vehicle):
    speed_limit = rospy.get_param("/speed_limit")
    if vehicle.speed > speed_limit:
        rospy.logwarn("Vehicle with plate number %s exceeded the speed limit: %0.1f K/H", vehicle.plate_number, vehicle.speed)
    else:
        rospy.loginfo("Vehicle speed: %0.1f K/H", vehicle.speed)

def speed_publisher():
    rospy.init_node('speed_publisher', anonymous=True)
    rospy.Subscriber("vehicle_speed", VehicleInfo, speed_callback)
    pub = rospy.Publisher('vehicle_speed', VehicleInfo, queue_size=10)
    rate = rospy.Rate(1.5)

    while not rospy.is_shutdown():
        vehicle = VehicleInfo()
        vehicle.plate_number = "01-AA-777-UZB"
        vehicle.speed = rospy.get_param("/vehicle_speed", 0.0)

        pub.publish(vehicle)

        rate.sleep()

if __name__ == '__main__':
    try:
        speed_publisher()
    except rospy.ROSInterruptException:
        pass
