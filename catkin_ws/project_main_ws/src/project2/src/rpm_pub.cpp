#include "ros/ros.h"

#include "std_msgs/Float32.h"

const float RPM = 60;

int main(int argc, char **argv)
{
  ros::init(argc, argv, "rpm_pub_node");

  ros::NodeHandle node_handle;

  ros::Publisher rpm_pub = node_handle.advertise<std_msgs::Float32>("rpm", 10);

  ros::Rate pub_rate(10);

  ROS_INFO("Publishing RPM...");

  while(ros::ok())
  {

    std_msgs::Float32 msg;

    msg.data = RPM;

    rpm_pub.publish(msg);

    pub_rate.sleep();
  }

}
