#include <ros/ros.h>
#include <smart_city/WeatherService.h>
#include <curl/curl.h>
#include <jsoncpp/json/json.h>

const std::string API_KEY = "63275b3bcb9672d8b7ff96485255cf70";

size_t writeCallback(char* buf, size_t size, size_t nmemb, void* up)
{
    for (int i = 0; i < size*nmemb; i++)
    {
        ((std::string*)up)->push_back(buf[i]);
    }
    return size*nmemb;
}

bool getWeatherInfo(float lat, float lon, std::string& city_name, std::string& weather, float& temp)
{
    std::string readBuffer;
    CURL* curl = curl_easy_init();

    if (curl)
    {
        std::string url;
        if (!city_name.empty()) {
            url = "http://api.openweathermap.org/data/2.5/weather?q=" + city_name + "&appid=" + API_KEY + "&units=metric";
        } else {
            url = "http://api.openweathermap.org/data/2.5/weather?lat=" + std::to_string(lat) + "&lon=" + std::to_string(lon) + "&appid=" + API_KEY + "&units=metric";
        }
        curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, writeCallback);
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
        CURLcode res = curl_easy_perform(curl);
        curl_easy_cleanup(curl);

        if (res != CURLE_OK)
        {
            ROS_ERROR("Error occurred while getting weather information");
            return false;
        }
        else
        {
            Json::Value root;
            Json::CharReaderBuilder builder;
            Json::CharReader* reader = builder.newCharReader();
            std::string errors;

            if (!reader->parse(readBuffer.c_str(), readBuffer.c_str() + readBuffer.size(), &root, &errors))
            {
                ROS_ERROR_STREAM("Failed to parse JSON: " << errors);
                return false;
            }

            city_name = root["name"].asString();
            weather = root["weather"][0]["description"].asString();
            temp = root["main"]["temp"].asFloat();

            return true;
        }
    }
    else
    {
        ROS_ERROR("Failed to initialize curl");
        return false;
    }
}

bool weatherServiceHandler(smart_city::WeatherService::Request &req,
                           smart_city::WeatherService::Response &res)
{
    std::string city;
    std::string weather;
    float temp;

    if (getWeatherInfo(req.latitude, req.longitude, req.city_name, weather, temp))
    {
        res.city_name = req.city_name;
        res.weather_status = weather;
        res.temperature = temp;
        return true;
    }
    else
    {
        return false;
    }
}


int main(int argc, char** argv)
{
    ros::init(argc, argv, "weather_service_server");
    ros::NodeHandle nh;
    ros::ServiceServer service = nh.advertiseService("weather_service", weatherServiceHandler);
    ROS_INFO("Ready to get weather information");
    ros::spin();

    return 0;
}
