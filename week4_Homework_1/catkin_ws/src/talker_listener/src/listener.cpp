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

