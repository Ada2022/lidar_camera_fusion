// Generated by gencpp from file lidar_obstacle_detector/Obstacle.msg
// DO NOT EDIT!


#ifndef LIDAR_OBSTACLE_DETECTOR_MESSAGE_OBSTACLE_H
#define LIDAR_OBSTACLE_DETECTOR_MESSAGE_OBSTACLE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace lidar_obstacle_detector
{
template <class ContainerAllocator>
struct Obstacle_
{
  typedef Obstacle_<ContainerAllocator> Type;

  Obstacle_()
    : Class()
    , xCenter(0.0)
    , yCenter(0.0)
    , zCenter(0.0)
    , width(0.0)
    , length(0.0)
    , height(0.0)  {
    }
  Obstacle_(const ContainerAllocator& _alloc)
    : Class(_alloc)
    , xCenter(0.0)
    , yCenter(0.0)
    , zCenter(0.0)
    , width(0.0)
    , length(0.0)
    , height(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _Class_type;
  _Class_type Class;

   typedef double _xCenter_type;
  _xCenter_type xCenter;

   typedef double _yCenter_type;
  _yCenter_type yCenter;

   typedef double _zCenter_type;
  _zCenter_type zCenter;

   typedef double _width_type;
  _width_type width;

   typedef double _length_type;
  _length_type length;

   typedef double _height_type;
  _height_type height;





  typedef boost::shared_ptr< ::lidar_obstacle_detector::Obstacle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lidar_obstacle_detector::Obstacle_<ContainerAllocator> const> ConstPtr;

}; // struct Obstacle_

typedef ::lidar_obstacle_detector::Obstacle_<std::allocator<void> > Obstacle;

typedef boost::shared_ptr< ::lidar_obstacle_detector::Obstacle > ObstaclePtr;
typedef boost::shared_ptr< ::lidar_obstacle_detector::Obstacle const> ObstacleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lidar_obstacle_detector::Obstacle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lidar_obstacle_detector::Obstacle_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lidar_obstacle_detector::Obstacle_<ContainerAllocator1> & lhs, const ::lidar_obstacle_detector::Obstacle_<ContainerAllocator2> & rhs)
{
  return lhs.Class == rhs.Class &&
    lhs.xCenter == rhs.xCenter &&
    lhs.yCenter == rhs.yCenter &&
    lhs.zCenter == rhs.zCenter &&
    lhs.width == rhs.width &&
    lhs.length == rhs.length &&
    lhs.height == rhs.height;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lidar_obstacle_detector::Obstacle_<ContainerAllocator1> & lhs, const ::lidar_obstacle_detector::Obstacle_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lidar_obstacle_detector

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::lidar_obstacle_detector::Obstacle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lidar_obstacle_detector::Obstacle_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lidar_obstacle_detector::Obstacle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lidar_obstacle_detector::Obstacle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar_obstacle_detector::Obstacle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar_obstacle_detector::Obstacle_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lidar_obstacle_detector::Obstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "02fa78c2104fdac90b9cb90ca8b76a9b";
  }

  static const char* value(const ::lidar_obstacle_detector::Obstacle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x02fa78c2104fdac9ULL;
  static const uint64_t static_value2 = 0x0b9cb90ca8b76a9bULL;
};

template<class ContainerAllocator>
struct DataType< ::lidar_obstacle_detector::Obstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lidar_obstacle_detector/Obstacle";
  }

  static const char* value(const ::lidar_obstacle_detector::Obstacle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lidar_obstacle_detector::Obstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string Class\n"
"float64 xCenter\n"
"float64 yCenter\n"
"float64 zCenter\n"
"float64 width\n"
"float64 length\n"
"float64 height\n"
;
  }

  static const char* value(const ::lidar_obstacle_detector::Obstacle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lidar_obstacle_detector::Obstacle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Class);
      stream.next(m.xCenter);
      stream.next(m.yCenter);
      stream.next(m.zCenter);
      stream.next(m.width);
      stream.next(m.length);
      stream.next(m.height);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Obstacle_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lidar_obstacle_detector::Obstacle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lidar_obstacle_detector::Obstacle_<ContainerAllocator>& v)
  {
    s << indent << "Class: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.Class);
    s << indent << "xCenter: ";
    Printer<double>::stream(s, indent + "  ", v.xCenter);
    s << indent << "yCenter: ";
    Printer<double>::stream(s, indent + "  ", v.yCenter);
    s << indent << "zCenter: ";
    Printer<double>::stream(s, indent + "  ", v.zCenter);
    s << indent << "width: ";
    Printer<double>::stream(s, indent + "  ", v.width);
    s << indent << "length: ";
    Printer<double>::stream(s, indent + "  ", v.length);
    s << indent << "height: ";
    Printer<double>::stream(s, indent + "  ", v.height);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LIDAR_OBSTACLE_DETECTOR_MESSAGE_OBSTACLE_H
