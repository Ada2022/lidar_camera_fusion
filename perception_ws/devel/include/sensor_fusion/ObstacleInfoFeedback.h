// Generated by gencpp from file sensor_fusion/ObstacleInfoFeedback.msg
// DO NOT EDIT!


#ifndef SENSOR_FUSION_MESSAGE_OBSTACLEINFOFEEDBACK_H
#define SENSOR_FUSION_MESSAGE_OBSTACLEINFOFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace sensor_fusion
{
template <class ContainerAllocator>
struct ObstacleInfoFeedback_
{
  typedef ObstacleInfoFeedback_<ContainerAllocator> Type;

  ObstacleInfoFeedback_()
    {
    }
  ObstacleInfoFeedback_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::sensor_fusion::ObstacleInfoFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sensor_fusion::ObstacleInfoFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct ObstacleInfoFeedback_

typedef ::sensor_fusion::ObstacleInfoFeedback_<std::allocator<void> > ObstacleInfoFeedback;

typedef boost::shared_ptr< ::sensor_fusion::ObstacleInfoFeedback > ObstacleInfoFeedbackPtr;
typedef boost::shared_ptr< ::sensor_fusion::ObstacleInfoFeedback const> ObstacleInfoFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sensor_fusion::ObstacleInfoFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sensor_fusion::ObstacleInfoFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace sensor_fusion

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::sensor_fusion::ObstacleInfoFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sensor_fusion::ObstacleInfoFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensor_fusion::ObstacleInfoFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensor_fusion::ObstacleInfoFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_fusion::ObstacleInfoFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_fusion::ObstacleInfoFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sensor_fusion::ObstacleInfoFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::sensor_fusion::ObstacleInfoFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::sensor_fusion::ObstacleInfoFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_fusion/ObstacleInfoFeedback";
  }

  static const char* value(const ::sensor_fusion::ObstacleInfoFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sensor_fusion::ObstacleInfoFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Feedback definition\n"
"\n"
;
  }

  static const char* value(const ::sensor_fusion::ObstacleInfoFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sensor_fusion::ObstacleInfoFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObstacleInfoFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sensor_fusion::ObstacleInfoFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::sensor_fusion::ObstacleInfoFeedback_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // SENSOR_FUSION_MESSAGE_OBSTACLEINFOFEEDBACK_H