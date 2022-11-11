// Generated by gencpp from file lidar_camera_calibration/ObjectCount.msg
// DO NOT EDIT!


#ifndef LIDAR_CAMERA_CALIBRATION_MESSAGE_OBJECTCOUNT_H
#define LIDAR_CAMERA_CALIBRATION_MESSAGE_OBJECTCOUNT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace lidar_camera_calibration
{
template <class ContainerAllocator>
struct ObjectCount_
{
  typedef ObjectCount_<ContainerAllocator> Type;

  ObjectCount_()
    : header()
    , count(0)  {
    }
  ObjectCount_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , count(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int8_t _count_type;
  _count_type count;





  typedef boost::shared_ptr< ::lidar_camera_calibration::ObjectCount_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lidar_camera_calibration::ObjectCount_<ContainerAllocator> const> ConstPtr;

}; // struct ObjectCount_

typedef ::lidar_camera_calibration::ObjectCount_<std::allocator<void> > ObjectCount;

typedef boost::shared_ptr< ::lidar_camera_calibration::ObjectCount > ObjectCountPtr;
typedef boost::shared_ptr< ::lidar_camera_calibration::ObjectCount const> ObjectCountConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lidar_camera_calibration::ObjectCount_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lidar_camera_calibration::ObjectCount_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lidar_camera_calibration::ObjectCount_<ContainerAllocator1> & lhs, const ::lidar_camera_calibration::ObjectCount_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.count == rhs.count;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lidar_camera_calibration::ObjectCount_<ContainerAllocator1> & lhs, const ::lidar_camera_calibration::ObjectCount_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lidar_camera_calibration

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::lidar_camera_calibration::ObjectCount_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lidar_camera_calibration::ObjectCount_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lidar_camera_calibration::ObjectCount_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lidar_camera_calibration::ObjectCount_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar_camera_calibration::ObjectCount_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar_camera_calibration::ObjectCount_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lidar_camera_calibration::ObjectCount_<ContainerAllocator> >
{
  static const char* value()
  {
    return "123675bf4420958597b5a78cb3800a1f";
  }

  static const char* value(const ::lidar_camera_calibration::ObjectCount_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x123675bf44209585ULL;
  static const uint64_t static_value2 = 0x97b5a78cb3800a1fULL;
};

template<class ContainerAllocator>
struct DataType< ::lidar_camera_calibration::ObjectCount_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lidar_camera_calibration/ObjectCount";
  }

  static const char* value(const ::lidar_camera_calibration::ObjectCount_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lidar_camera_calibration::ObjectCount_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"int8 count\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::lidar_camera_calibration::ObjectCount_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lidar_camera_calibration::ObjectCount_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.count);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObjectCount_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lidar_camera_calibration::ObjectCount_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lidar_camera_calibration::ObjectCount_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "count: ";
    Printer<int8_t>::stream(s, indent + "  ", v.count);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LIDAR_CAMERA_CALIBRATION_MESSAGE_OBJECTCOUNT_H
