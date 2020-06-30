// Generated by gencpp from file pi_io/gpio_output.msg
// DO NOT EDIT!


#ifndef PI_IO_MESSAGE_GPIO_OUTPUT_H
#define PI_IO_MESSAGE_GPIO_OUTPUT_H

#include <ros/service_traits.h>


#include <pi_io/gpio_outputRequest.h>
#include <pi_io/gpio_outputResponse.h>


namespace pi_io
{

struct gpio_output
{

typedef gpio_outputRequest Request;
typedef gpio_outputResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct gpio_output
} // namespace pi_io


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::pi_io::gpio_output > {
  static const char* value()
  {
    return "95c163469a76c20c97a2c4e570510777";
  }

  static const char* value(const ::pi_io::gpio_output&) { return value(); }
};

template<>
struct DataType< ::pi_io::gpio_output > {
  static const char* value()
  {
    return "pi_io/gpio_output";
  }

  static const char* value(const ::pi_io::gpio_output&) { return value(); }
};


// service_traits::MD5Sum< ::pi_io::gpio_outputRequest> should match 
// service_traits::MD5Sum< ::pi_io::gpio_output > 
template<>
struct MD5Sum< ::pi_io::gpio_outputRequest>
{
  static const char* value()
  {
    return MD5Sum< ::pi_io::gpio_output >::value();
  }
  static const char* value(const ::pi_io::gpio_outputRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::pi_io::gpio_outputRequest> should match 
// service_traits::DataType< ::pi_io::gpio_output > 
template<>
struct DataType< ::pi_io::gpio_outputRequest>
{
  static const char* value()
  {
    return DataType< ::pi_io::gpio_output >::value();
  }
  static const char* value(const ::pi_io::gpio_outputRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::pi_io::gpio_outputResponse> should match 
// service_traits::MD5Sum< ::pi_io::gpio_output > 
template<>
struct MD5Sum< ::pi_io::gpio_outputResponse>
{
  static const char* value()
  {
    return MD5Sum< ::pi_io::gpio_output >::value();
  }
  static const char* value(const ::pi_io::gpio_outputResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::pi_io::gpio_outputResponse> should match 
// service_traits::DataType< ::pi_io::gpio_output > 
template<>
struct DataType< ::pi_io::gpio_outputResponse>
{
  static const char* value()
  {
    return DataType< ::pi_io::gpio_output >::value();
  }
  static const char* value(const ::pi_io::gpio_outputResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PI_IO_MESSAGE_GPIO_OUTPUT_H
