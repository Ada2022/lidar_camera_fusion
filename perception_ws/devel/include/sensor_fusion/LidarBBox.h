// Generated by gencpp from file sensor_fusion/LidarBBox.msg
// DO NOT EDIT!


#ifndef SENSOR_FUSION_MESSAGE_LIDARBBOX_H
#define SENSOR_FUSION_MESSAGE_LIDARBBOX_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>
#include <geometry_msgs/Point.h>

namespace sensor_fusion
{
template <class ContainerAllocator>
struct LidarBBox_
{
  typedef LidarBBox_<ContainerAllocator> Type;

  LidarBBox_()
    : point_min()
    , point_max()  {
    }
  LidarBBox_(const ContainerAllocator& _alloc)
    : point_min(_alloc)
    , point_max(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _point_min_type;
  _point_min_type point_min;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _point_max_type;
  _point_max_type point_max;





  typedef boost::shared_ptr< ::sensor_fusion::LidarBBox_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sensor_fusion::LidarBBox_<ContainerAllocator> const> ConstPtr;

}; // struct LidarBBox_

typedef ::sensor_fusion::LidarBBox_<std::allocator<void> > LidarBBox;

typedef boost::shared_ptr< ::sensor_fusion::LidarBBox > LidarBBoxPtr;
typedef boost::shared_ptr< ::sensor_fusion::LidarBBox const> LidarBBoxConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sensor_fusion::LidarBBox_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sensor_fusion::LidarBBox_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sensor_fusion::LidarBBox_<ContainerAllocator1> & lhs, const ::sensor_fusion::LidarBBox_<ContainerAllocator2> & rhs)
{
  return lhs.point_min == rhs.point_min &&
    lhs.point_max == rhs.point_max;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sensor_fusion::LidarBBox_<ContainerAllocator1> & lhs, const ::sensor_fusion::LidarBBox_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sensor_fusion

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::sensor_fusion::LidarBBox_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sensor_fusion::LidarBBox_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensor_fusion::LidarBBox_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensor_fusion::LidarBBox_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_fusion::LidarBBox_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_fusion::LidarBBox_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sensor_fusion::LidarBBox_<ContainerAllocator> >
{
  static const char* value()
  {
    return "32eb6a28d30b2cdd8029c55836d8a97e";
  }

  static const char* value(const ::sensor_fusion::LidarBBox_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x32eb6a28d30b2cddULL;
  static const uint64_t static_value2 = 0x8029c55836d8a97eULL;
};

template<class ContainerAllocator>
struct DataType< ::sensor_fusion::LidarBBox_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_fusion/LidarBBox";
  }

  static const char* value(const ::sensor_fusion::LidarBBox_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sensor_fusion::LidarBBox_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Point point_min\n"
"geometry_msgs/Point point_max\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::sensor_fusion::LidarBBox_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sensor_fusion::LidarBBox_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.point_min);
      stream.next(m.point_max);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LidarBBox_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sensor_fusion::LidarBBox_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sensor_fusion::LidarBBox_<ContainerAllocator>& v)
  {
    s << indent << "point_min: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.point_min);
    s << indent << "point_max: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.point_max);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SENSOR_FUSION_MESSAGE_LIDARBBOX_H
