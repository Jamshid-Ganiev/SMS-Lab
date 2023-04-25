#include <ros/ros.h>
#include <smart_city/WeatherService.h>

void printWeatherReport(const smart_city::WeatherService::Response& res)
{
    std::cout << "City: " << res.city_name << std::endl;
    std::cout << "Weather status: " << res.weather_status << std::endl;
    std::cout << "Temperature: " << res.temperature << " °C" << std::endl;
}

void userInputCallback(const smart_city::WeatherService::Request& req)
{
    ros::NodeHandle nh;
    ros::ServiceClient client = nh.serviceClient<smart_city::WeatherService>("weather_service");
    smart_city::WeatherService srv;

    srv.request = req;

    if (client.call(srv))
    {
        printWeatherReport(srv.response);
    }
    else
    {
        ROS_ERROR("Failed to call weather service");
    }
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "weather_service_client");
    ros::NodeHandle nh;

    ros::Subscriber sub = nh.subscribe("user_input/req", 1000, userInputCallback);

    ros::spin();

    return 0;
}
