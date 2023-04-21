#include "ros/ros.h"
#include "smart_city/WeatherService.h"
#include "smart_city/GPSLocation.h"
#include "smart_city/WeatherStatus.h"

bool getWeather(smart_city::WeatherService::Request &req,
                smart_city::WeatherService::Response &res)
{
  // For now, we will return a dummy weather status
  res.weather.condition = "Sunny";
  res.weather.temperature = 25.0;

  ROS_INFO("Request: GPS location (latitude: %f, longitude: %f)", req.gps.latitude, req.gps.longitude);
  ROS_INFO("Sending... Weather Status: %s, Temperature: %f", res.weather.condition.c_str(), res.weather.temperature);
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "weather_service_server");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("get_weather", getWeather);
  ROS_INFO("Weather service server is ready.");
  ros::spin();

  return 0;
}
