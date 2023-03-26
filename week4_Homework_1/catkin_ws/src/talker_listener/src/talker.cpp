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

