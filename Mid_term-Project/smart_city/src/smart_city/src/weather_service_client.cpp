#include "ros/ros.h"
#include "smart_city/WeatherService.h"
#include "smart_city/GPSLocation.h"
#include "smart_city/WeatherStatus.h"

int main(int argc, char **argv)
{
  ros::init(argc, argv, "weather_service_client");
  ros::NodeHandle n;

  ros::ServiceClient client = n.serviceClient<smart_city::WeatherService>("get_weather");

  smart_city::WeatherService srv;
  srv.request.gps.latitude = 37.4563;
  srv.request.gps.longitude = 126.7052;

  if (client.call(srv))
  {
    ROS_INFO("Weather Status: %s, Temperature: %0.1f Celcius", srv.response.weather.condition.c_str(), srv.response.weather.temperature);
  }
  else
  {
    ROS_ERROR("Failed to call service get_weather");
    return 1;
  }

  return 0;
}
