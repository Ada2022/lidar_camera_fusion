// Generated by gencpp from file lidar_camera_calibration/Obstacle.msg
// DO NOT EDIT!


#ifndef LIDAR_CAMERA_CALIBRATION_MESSAGE_OBSTACLE_H
#define LIDAR_CAMERA_CALIBRATION_MESSAGE_OBSTACLE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace lidar_camera_calibration
{
template <class ContainerAllocator>
struct Obstacle_
{
  typedef Obstacle_<ContainerAllocator> Type;

  Obstacle_()
    : xCenter(0.0)
    , yCenter(0.0)
    , zCenter(0.0)
    , width(0.0)
    , length(0.0)
    , height(0.0)
    , Class()
    , points()  {
    }
  Obstacle_(const ContainerAllocator& _alloc)
    : xCenter(0.0)
    , yCenter(0.0)
    , zCenter(0.0)
    , width(0.0)
    , length(0.0)
    , height(0.0)
    , Class(_alloc)
    , points(_alloc)  {
  (void)_alloc;
    }



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

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _Class_type;
  _Class_type Class;

   typedef std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Point_<ContainerAllocator> >::other >  _points_type;
  _points_type points;





  typedef boost::shared_ptr< ::lidar_camera_calibration::Obstacle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lidar_camera_calibration::Obstacle_<ContainerAllocator> const> ConstPtr;

}; // struct Obstacle_

typedef ::lidar_camera_calibration::Obstacle_<std::allocator<void> > Obstacle;

typedef boost::shared_ptr< ::lidar_camera_calibration::Obstacle > ObstaclePtr;
typedef boost::shared_ptr< ::lidar_camera_calibration::Obstacle const> ObstacleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lidar_camera_calibration::Obstacle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lidar_camera_calibration::Obstacle_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lidar_camera_calibration::Obstacle_<ContainerAllocator1> & lhs, const ::lidar_camera_calibration::Obstacle_<ContainerAllocator2> & rhs)
{
  return lhs.xCenter == rhs.xCenter &&
    lhs.yCenter == rhs.yCenter &&
    lhs.zCenter == rhs.zCenter &&
    lhs.width == rhs.width &&
    lhs.length == rhs.length &&
    lhs.height == rhs.height &&
    lhs.Class == rhs.Class &&
    lhs.points == rhs.points;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lidar_camera_calibration::Obstacle_<ContainerAllocator1> & lhs, const ::lidar_camera_calibration::Obstacle_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lidar_camera_calibration

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::lidar_camera_calibration::Obstacle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lidar_camera_calibration::Obstacle_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lidar_camera_calibration::Obstacle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lidar_camera_calibration::Obstacle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar_camera_calibration::Obstacle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar_camera_calibration::Obstacle_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lidar_camera_calibration::Obstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "01f316d769c454a1ebf14de07611fe3f";
  }

  static const char* value(const ::lidar_camera_calibration::Obstacle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x01f316d769c454a1ULL;
  static const uint64_t static_value2 = 0xebf14de07611fe3fULL;
};

template<class ContainerAllocator>
struct DataType< ::lidar_camera_calibration::Obstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lidar_camera_calibration/Obstacle";
  }

  static const char* value(const ::lidar_camera_calibration::Obstacle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lidar_camera_calibration::Obstacle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 xCenter\n"
"float64 yCenter\n"
"float64 zCenter\n"
"float64 width\n"
"float64 length\n"
"float64 height\n"
"string Class\n"
"geometry_msgs/Point[] points\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::lidar_camera_calibration::Obstacle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lidar_camera_calibration::Obstacle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.xCenter);
      stream.next(m.yCenter);
      stream.next(m.zCenter);
      stream.next(m.width);
      stream.next(m.length);
      stream.next(m.height);
      stream.next(m.Class);
      stream.next(m.points);
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
struct Printer< ::lidar_camera_calibration::Obstacle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lidar_camera_calibration::Obstacle_<ContainerAllocator>& v)
  {
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
    s << indent << "Class: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.Class);
    s << indent << "points[]" << std::endl;
    for (size_t i = 0; i < v.points.size(); ++i)
    {
      s << indent << "  points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "    ", v.points[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // LIDAR_CAMERA_CALIBRATION_MESSAGE_OBSTACLE_H
