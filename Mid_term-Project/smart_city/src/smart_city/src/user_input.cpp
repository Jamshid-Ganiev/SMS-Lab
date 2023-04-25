#include <ros/ros.h>
#include <iostream>
#include <string>
#include <smart_city/WeatherService.h>

int main(int argc, char** argv)
{
    ros::init(argc, argv, "user_input");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<smart_city::WeatherService::Request>("user_input/req", 1000);

    std::string input_method;
    float latitude, longitude;
    std::string city_name;

    ros::Rate loop_rate(1);

    while (ros::ok())
    {
        std::cout << "Enter '1' to enter city name or '2' to enter GPS coordinates: ";
        std::cin >> input_method;

        smart_city::WeatherService::Request req;

        if (input_method == "1")
        {
            std::cout << "Enter city name: ";
            std::cin.ignore();
            std::getline(std::cin, city_name);
            req.city_name = city_name;
            req.latitude = 0;
            req.longitude = 0;
        }
        else if (input_method == "2")
        {
            std::cout << "Enter the latitude: ";
            std::cin >> latitude;
            std::cout << "Enter the longitude: ";
            std::cin >> longitude;
            req.city_name = "";
            req.latitude = latitude;
            req.longitude = longitude;
        }
        else
        {
            std::cerr << "Invalid input method entered" << std::endl;
            return 1;
        }

        pub.publish(req);

        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}
