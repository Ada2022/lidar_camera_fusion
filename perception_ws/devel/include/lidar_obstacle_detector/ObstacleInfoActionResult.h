// Generated by gencpp from file lidar_obstacle_detector/ObstacleInfoActionResult.msg
// DO NOT EDIT!


#ifndef LIDAR_OBSTACLE_DETECTOR_MESSAGE_OBSTACLEINFOACTIONRESULT_H
#define LIDAR_OBSTACLE_DETECTOR_MESSAGE_OBSTACLEINFOACTIONRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalStatus.h>
#include <lidar_obstacle_detector/ObstacleInfoResult.h>

namespace lidar_obstacle_detector
{
template <class ContainerAllocator>
struct ObstacleInfoActionResult_
{
  typedef ObstacleInfoActionResult_<ContainerAllocator> Type;

  ObstacleInfoActionResult_()
    : header()
    , status()
    , result()  {
    }
  ObstacleInfoActionResult_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , status(_alloc)
    , result(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalStatus_<ContainerAllocator>  _status_type;
  _status_type status;

   typedef  ::lidar_obstacle_detector::ObstacleInfoResult_<ContainerAllocator>  _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator> const> ConstPtr;

}; // struct ObstacleInfoActionResult_

typedef ::lidar_obstacle_detector::ObstacleInfoActionResult_<std::allocator<void> > ObstacleInfoActionResult;

typedef boost::shared_ptr< ::lidar_obstacle_detector::ObstacleInfoActionResult > ObstacleInfoActionResultPtr;
typedef boost::shared_ptr< ::lidar_obstacle_detector::ObstacleInfoActionResult const> ObstacleInfoActionResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator1> & lhs, const ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.status == rhs.status &&
    lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator1> & lhs, const ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lidar_obstacle_detector

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cee74d68c45861d4fd749c9fb6ecf515";
  }

  static const char* value(const ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcee74d68c45861d4ULL;
  static const uint64_t static_value2 = 0xfd749c9fb6ecf515ULL;
};

template<class ContainerAllocator>
struct DataType< ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lidar_obstacle_detector/ObstacleInfoActionResult";
  }

  static const char* value(const ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"ObstacleInfoResult result\n"
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
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalStatus\n"
"GoalID goal_id\n"
"uint8 status\n"
"uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n"
"uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n"
"uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n"
"                            #   and has since completed its execution (Terminal State)\n"
"uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n"
"uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n"
"                            #    to some failure (Terminal State)\n"
"uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n"
"                            #    because the goal was unattainable or invalid (Terminal State)\n"
"uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n"
"                            #    and has not yet completed execution\n"
"uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n"
"                            #    but the action server has not yet confirmed that the goal is canceled\n"
"uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n"
"                            #    and was successfully cancelled (Terminal State)\n"
"uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n"
"                            #    sent over the wire by an action server\n"
"\n"
"#Allow for the user to associate a string with GoalStatus for debugging\n"
"string text\n"
"\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: lidar_obstacle_detector/ObstacleInfoResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Result definition\n"
"lidar_obstacle_detector/Obstacles obstacles\n"
"\n"
"\n"
"================================================================================\n"
"MSG: lidar_obstacle_detector/Obstacles\n"
"Obstacle[] obstacles\n"
"\n"
"================================================================================\n"
"MSG: lidar_obstacle_detector/Obstacle\n"
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

  static const char* value(const ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.status);
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObstacleInfoActionResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lidar_obstacle_detector::ObstacleInfoActionResult_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "status: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.status);
    s << indent << "result: ";
    s << std::endl;
    Printer< ::lidar_obstacle_detector::ObstacleInfoResult_<ContainerAllocator> >::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LIDAR_OBSTACLE_DETECTOR_MESSAGE_OBSTACLEINFOACTIONRESULT_H