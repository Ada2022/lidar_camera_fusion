// Generated by gencpp from file lidar_obstacle_detector/ObstacleRanges.msg
// DO NOT EDIT!


#ifndef LIDAR_OBSTACLE_DETECTOR_MESSAGE_OBSTACLERANGES_H
#define LIDAR_OBSTACLE_DETECTOR_MESSAGE_OBSTACLERANGES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <lidar_obstacle_detector/ObstacleRange.h>

namespace lidar_obstacle_detector
{
template <class ContainerAllocator>
struct ObstacleRanges_
{
  typedef ObstacleRanges_<ContainerAllocator> Type;

  ObstacleRanges_()
    : obstacle_ranges()  {
    }
  ObstacleRanges_(const ContainerAllocator& _alloc)
    : obstacle_ranges(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::lidar_obstacle_detector::ObstacleRange_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::lidar_obstacle_detector::ObstacleRange_<ContainerAllocator> >::other >  _obstacle_ranges_type;
  _obstacle_ranges_type obstacle_ranges;





  typedef boost::shared_ptr< ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator> const> ConstPtr;

}; // struct ObstacleRanges_

typedef ::lidar_obstacle_detector::ObstacleRanges_<std::allocator<void> > ObstacleRanges;

typedef boost::shared_ptr< ::lidar_obstacle_detector::ObstacleRanges > ObstacleRangesPtr;
typedef boost::shared_ptr< ::lidar_obstacle_detector::ObstacleRanges const> ObstacleRangesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator1> & lhs, const ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator2> & rhs)
{
  return lhs.obstacle_ranges == rhs.obstacle_ranges;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator1> & lhs, const ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lidar_obstacle_detector

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bad4fcf5a1b99d59695951fba091918c";
  }

  static const char* value(const ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbad4fcf5a1b99d59ULL;
  static const uint64_t static_value2 = 0x695951fba091918cULL;
};

template<class ContainerAllocator>
struct DataType< ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lidar_obstacle_detector/ObstacleRanges";
  }

  static const char* value(const ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ObstacleRange[] obstacle_ranges\n"
"\n"
"================================================================================\n"
"MSG: lidar_obstacle_detector/ObstacleRange\n"
"string Class\n"
"float64 xmin\n"
"float64 ymin\n"
"float64 zmin\n"
"float64 xmax\n"
"float64 ymax\n"
"float64 zmax\n"
"geometry_msgs/Point[] points\n"
"\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.obstacle_ranges);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObstacleRanges_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lidar_obstacle_detector::ObstacleRanges_<ContainerAllocator>& v)
  {
    s << indent << "obstacle_ranges[]" << std::endl;
    for (size_t i = 0; i < v.obstacle_ranges.size(); ++i)
    {
      s << indent << "  obstacle_ranges[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::lidar_obstacle_detector::ObstacleRange_<ContainerAllocator> >::stream(s, indent + "    ", v.obstacle_ranges[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // LIDAR_OBSTACLE_DETECTOR_MESSAGE_OBSTACLERANGES_H
