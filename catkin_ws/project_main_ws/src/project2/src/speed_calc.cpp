#include "ros/ros.h"

#include "std_msgs/Float32.h"

const float WHEEL_RADIUS = 12.5 / 100; // Size in centimeters --> meters

ros::Publisher speed_pub;


void subCallback(const std_msgs::Float32::ConstPtr& rpm)
{
  std_msgs::Float32 speed_msg;

  // Speed = Circumference * Rev/s
  speed_msg.data = (2 * WHEEL_RADIUS * 3.14159) * (rpm->data / 60);

  speed_pub.publish(speed_msg);
}


int main(int argc, char **argv)
{
  ros::init(argc, argv, "speed_calc_node");

  ros::NodeHandle node_handle;

  speed_pub = node_handle.advertise<std_msgs::Float32>("speed", 10);

  ros::Subscriber rpm_sub = node_handle.subscribe("rpm", 10, subCallback);

  ros::spin();

  return 0;
}
