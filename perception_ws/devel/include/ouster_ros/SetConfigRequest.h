// Generated by gencpp from file ouster_ros/SetConfigRequest.msg
// DO NOT EDIT!


#ifndef OUSTER_ROS_MESSAGE_SETCONFIGREQUEST_H
#define OUSTER_ROS_MESSAGE_SETCONFIGREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ouster_ros
{
template <class ContainerAllocator>
struct SetConfigRequest_
{
  typedef SetConfigRequest_<ContainerAllocator> Type;

  SetConfigRequest_()
    : config_file()  {
    }
  SetConfigRequest_(const ContainerAllocator& _alloc)
    : config_file(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _config_file_type;
  _config_file_type config_file;





  typedef boost::shared_ptr< ::ouster_ros::SetConfigRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ouster_ros::SetConfigRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetConfigRequest_

typedef ::ouster_ros::SetConfigRequest_<std::allocator<void> > SetConfigRequest;

typedef boost::shared_ptr< ::ouster_ros::SetConfigRequest > SetConfigRequestPtr;
typedef boost::shared_ptr< ::ouster_ros::SetConfigRequest const> SetConfigRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ouster_ros::SetConfigRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ouster_ros::SetConfigRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ouster_ros::SetConfigRequest_<ContainerAllocator1> & lhs, const ::ouster_ros::SetConfigRequest_<ContainerAllocator2> & rhs)
{
  return lhs.config_file == rhs.config_file;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ouster_ros::SetConfigRequest_<ContainerAllocator1> & lhs, const ::ouster_ros::SetConfigRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ouster_ros

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ouster_ros::SetConfigRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ouster_ros::SetConfigRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ouster_ros::SetConfigRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ouster_ros::SetConfigRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ouster_ros::SetConfigRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ouster_ros::SetConfigRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ouster_ros::SetConfigRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "90949894c75d4db440cc7a08c4bf47dd";
  }

  static const char* value(const ::ouster_ros::SetConfigRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x90949894c75d4db4ULL;
  static const uint64_t static_value2 = 0x40cc7a08c4bf47ddULL;
};

template<class ContainerAllocator>
struct DataType< ::ouster_ros::SetConfigRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ouster_ros/SetConfigRequest";
  }

  static const char* value(const ::ouster_ros::SetConfigRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ouster_ros::SetConfigRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string config_file\n"
;
  }

  static const char* value(const ::ouster_ros::SetConfigRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ouster_ros::SetConfigRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.config_file);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetConfigRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ouster_ros::SetConfigRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ouster_ros::SetConfigRequest_<ContainerAllocator>& v)
  {
    s << indent << "config_file: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.config_file);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OUSTER_ROS_MESSAGE_SETCONFIGREQUEST_H
