# SMS-Lab
Smart Mobility Service Lab
### For grading purposes:
<strong>I did not add any piece of code to .gitignore. It does not mean that I do not know how to use .gitignore concept!</strong>

# WEEK 4 Homework1
![image](https://user-images.githubusercontent.com/84252587/227773782-03afe162-c707-422f-aa7b-552b2fcd635e.png)
## Here is the video explanation for the project:
[Demo Video link in google drive](https://drive.google.com/file/d/1WkuuwcvjRATmPMR4RL3zGLldcCBCsQRD/view?usp=share_link)

## source code:
> talker.cpp
```cpp
#include <ros/ros.h>
#include <std_msgs/String.h>
#include <sstream>

int main(int argc, char** argv)
{
    // Initialize the ROS node
    ros::init(argc, argv, "talker");
    ros::NodeHandle nh;

    // Create a publisher for the "chatter" topic
    ros::Publisher chatter_pub = nh.advertise<std_msgs::String>("chatter", 1000);

    // Loop to prompt the user for input and publish messages
    ros::Rate loop_rate(10); // 10Hz
    while (ros::ok())
    {
        // Prompt the user for input
        std::cout << "Enter a message: ";
        std::string message;
        std::getline(std::cin, message);

        // Create a new message and publish it
        std_msgs::String msg;
        msg.data = message;
        chatter_pub.publish(msg);

        // Sleep to maintain the loop rate
        loop_rate.sleep();
    }

    return 0;
}
```

> listener.cpp

```
#include <ros/ros.h>
#include <std_msgs/String.h>

void chatterCallback(const std_msgs::String::ConstPtr& msg)
{
    // Print the received message and its length
    ROS_INFO("I heard: [%s], which has length %d", msg->data.c_str(), msg->data.length());
}

int main(int argc, char** argv)
{
    // Initialize the ROS node
    ros::init(argc, argv, "listener");
    ros::NodeHandle nh;

    // Create a subscriber for the "chatter" topic
    ros::Subscriber sub = nh.subscribe("chatter", 1000, chatterCallback);

    // Spin to receive messages
    ros::spin();

    return 0;
}

```
# Week 5 | Homework 2

![Photo snapshot](https://user-images.githubusercontent.com/84252587/229272295-e1b6542b-7ab4-4a6e-8ae9-8365d9def24c.png)


## Here is the video explanation for the project:
[Demo Video link in google drive](https://drive.google.com/file/d/1iPvAKR7bgD22firaLfQysT-tfmjF4b4T/view?usp=share_link)

## source code:
> rpm_publisher.py
```py
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

```

> speed_publisher.py

```py
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

```
