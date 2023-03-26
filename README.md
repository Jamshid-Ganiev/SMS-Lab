# SMS-Lab
Smart Mobility Service Lab

# WEEK 4 Homework1
![image](https://user-images.githubusercontent.com/84252587/227773782-03afe162-c707-422f-aa7b-552b2fcd635e.png)
## Here is the video explanation for the project:
[Demo Video link in google drive]https://drive.google.com/file/d/1WkuuwcvjRATmPMR4RL3zGLldcCBCsQRD/view?usp=share_link)

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
