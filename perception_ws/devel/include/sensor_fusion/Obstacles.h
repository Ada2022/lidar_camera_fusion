// Generated by gencpp from file sensor_fusion/Obstacles.msg
// DO NOT EDIT!


#ifndef SENSOR_FUSION_MESSAGE_OBSTACLES_H
#define SENSOR_FUSION_MESSAGE_OBSTACLES_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_fusion/Obstacle.h>

namespace sensor_fusion
{
template <class ContainerAllocator>
struct Obstacles_
{
  typedef Obstacles_<ContainerAllocator> Type;

  Obstacles_()
    : obstacles()  {
    }
  Obstacles_(const ContainerAllocator& _alloc)
    : obstacles(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::sensor_fusion::Obstacle_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::sensor_fusion::Obstacle_<ContainerAllocator> >> _obstacles_type;
  _obstacles_type obstacles;





  typedef boost::shared_ptr< ::sensor_fusion::Obstacles_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sensor_fusion::Obstacles_<ContainerAllocator> const> ConstPtr;

}; // struct Obstacles_

typedef ::sensor_fusion::Obstacles_<std::allocator<void> > Obstacles;

typedef boost::shared_ptr< ::sensor_fusion::Obstacles > ObstaclesPtr;
typedef boost::shared_ptr< ::sensor_fusion::Obstacles const> ObstaclesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sensor_fusion::Obstacles_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sensor_fusion::Obstacles_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sensor_fusion::Obstacles_<ContainerAllocator1> & lhs, const ::sensor_fusion::Obstacles_<ContainerAllocator2> & rhs)
{
  return lhs.obstacles == rhs.obstacles;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sensor_fusion::Obstacles_<ContainerAllocator1> & lhs, const ::sensor_fusion::Obstacles_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sensor_fusion

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::sensor_fusion::Obstacles_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sensor_fusion::Obstacles_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensor_fusion::Obstacles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensor_fusion::Obstacles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_fusion::Obstacles_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_fusion::Obstacles_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sensor_fusion::Obstacles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "75a819090f37b798d8bf3a5f74d98dc8";
  }

  static const char* value(const ::sensor_fusion::Obstacles_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x75a819090f37b798ULL;
  static const uint64_t static_value2 = 0xd8bf3a5f74d98dc8ULL;
};

template<class ContainerAllocator>
struct DataType< ::sensor_fusion::Obstacles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_fusion/Obstacles";
  }

  static const char* value(const ::sensor_fusion::Obstacles_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sensor_fusion::Obstacles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Obstacle[] obstacles\n"
"\n"
"================================================================================\n"
"MSG: sensor_fusion/Obstacle\n"
"string Class\n"
"float64 xCenter\n"
"float64 yCenter\n"
"float64 zCenter\n"
"float64 width\n"
"float64 length\n"
"float64 height\n"
"\n"
;
  }

  static const char* value(const ::sensor_fusion::Obstacles_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sensor_fusion::Obstacles_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.obstacles);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Obstacles_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sensor_fusion::Obstacles_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sensor_fusion::Obstacles_<ContainerAllocator>& v)
  {
    s << indent << "obstacles[]" << std::endl;
    for (size_t i = 0; i < v.obstacles.size(); ++i)
    {
      s << indent << "  obstacles[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::sensor_fusion::Obstacle_<ContainerAllocator> >::stream(s, indent + "    ", v.obstacles[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SENSOR_FUSION_MESSAGE_OBSTACLES_H
