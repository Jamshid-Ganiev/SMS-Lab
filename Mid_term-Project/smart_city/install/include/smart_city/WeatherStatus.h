// Generated by gencpp from file smart_city/WeatherStatus.msg
// DO NOT EDIT!


#ifndef SMART_CITY_MESSAGE_WEATHERSTATUS_H
#define SMART_CITY_MESSAGE_WEATHERSTATUS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace smart_city
{
template <class ContainerAllocator>
struct WeatherStatus_
{
  typedef WeatherStatus_<ContainerAllocator> Type;

  WeatherStatus_()
    : condition()
    , temperature(0.0)
    , temperature_in_celsius(0.0)
    , weather_description()  {
    }
  WeatherStatus_(const ContainerAllocator& _alloc)
    : condition(_alloc)
    , temperature(0.0)
    , temperature_in_celsius(0.0)
    , weather_description(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _condition_type;
  _condition_type condition;

   typedef double _temperature_type;
  _temperature_type temperature;

   typedef float _temperature_in_celsius_type;
  _temperature_in_celsius_type temperature_in_celsius;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _weather_description_type;
  _weather_description_type weather_description;





  typedef boost::shared_ptr< ::smart_city::WeatherStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::smart_city::WeatherStatus_<ContainerAllocator> const> ConstPtr;

}; // struct WeatherStatus_

typedef ::smart_city::WeatherStatus_<std::allocator<void> > WeatherStatus;

typedef boost::shared_ptr< ::smart_city::WeatherStatus > WeatherStatusPtr;
typedef boost::shared_ptr< ::smart_city::WeatherStatus const> WeatherStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::smart_city::WeatherStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::smart_city::WeatherStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::smart_city::WeatherStatus_<ContainerAllocator1> & lhs, const ::smart_city::WeatherStatus_<ContainerAllocator2> & rhs)
{
  return lhs.condition == rhs.condition &&
    lhs.temperature == rhs.temperature &&
    lhs.temperature_in_celsius == rhs.temperature_in_celsius &&
    lhs.weather_description == rhs.weather_description;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::smart_city::WeatherStatus_<ContainerAllocator1> & lhs, const ::smart_city::WeatherStatus_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace smart_city

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::smart_city::WeatherStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::smart_city::WeatherStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::smart_city::WeatherStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::smart_city::WeatherStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::smart_city::WeatherStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::smart_city::WeatherStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::smart_city::WeatherStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5057a82170bb6f01299019173b4603ab";
  }

  static const char* value(const ::smart_city::WeatherStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5057a82170bb6f01ULL;
  static const uint64_t static_value2 = 0x299019173b4603abULL;
};

template<class ContainerAllocator>
struct DataType< ::smart_city::WeatherStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "smart_city/WeatherStatus";
  }

  static const char* value(const ::smart_city::WeatherStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::smart_city::WeatherStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string condition\n"
"float64 temperature\n"
"\n"
"float32 temperature_in_celsius\n"
"string weather_description\n"
"\n"
;
  }

  static const char* value(const ::smart_city::WeatherStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::smart_city::WeatherStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.condition);
      stream.next(m.temperature);
      stream.next(m.temperature_in_celsius);
      stream.next(m.weather_description);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WeatherStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::smart_city::WeatherStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::smart_city::WeatherStatus_<ContainerAllocator>& v)
  {
    s << indent << "condition: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.condition);
    s << indent << "temperature: ";
    Printer<double>::stream(s, indent + "  ", v.temperature);
    s << indent << "temperature_in_celsius: ";
    Printer<float>::stream(s, indent + "  ", v.temperature_in_celsius);
    s << indent << "weather_description: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.weather_description);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SMART_CITY_MESSAGE_WEATHERSTATUS_H
