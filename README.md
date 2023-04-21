# SMS-Lab
Smart Mobility Service Lab
### For grading purposes:
<strong>I did not move any piece of code into .gitignore. <i>And It does not mean that I do not know how to use .gitignore concept!</i></strong>
<br/>
> here is an easy way:
> <br/>
[Jump to Week 4 Homework 1](#week-4--homework-1)<br/>
[Jump to Week 5 Homework 2](#week-5--homework-2)<br/>
[Jump to Week 6 Homework 3](#week-6--homework-3)<br/>
[Jump to Week 7 Homework 4](#week-7--homework-4)<br/>


***

# WEEK 4 Homework1 <a name="week-4--homework-1"></a>
***

![image](https://user-images.githubusercontent.com/84252587/227773782-03afe162-c707-422f-aa7b-552b2fcd635e.png)
## Here is the video explanation for the project:
[Demo Video link in google drive](https://drive.google.com/file/d/1WkuuwcvjRATmPMR4RL3zGLldcCBCsQRD/view?usp=share_link)

## source code:
> talker.cpp
```cpp
#include <ros/ros.h>
#include <std_msgs/String.h>
#include <sstream>

int main(int argc, char** argv)
{
    // Initialize the ROS node
    ros::init(argc, argv, "talker");
    ros::NodeHandle nh;

    // Create a publisher for the "chatter" topic
    ros::Publisher chatter_pub = nh.advertise<std_msgs::String>("chatter", 1000);

    // Loop to prompt the user for input and publish messages
    ros::Rate loop_rate(10); // 10Hz
    while (ros::ok())
    {
        // Prompt the user for input
        std::cout << "Enter a message: ";
        std::string message;
        std::getline(std::cin, message);

        // Create a new message and publish it
        std_msgs::String msg;
        msg.data = message;
        chatter_pub.publish(msg);

        // Sleep to maintain the loop rate
        loop_rate.sleep();
    }

    return 0;
}
```

> listener.cpp

```
#include <ros/ros.h>
#include <std_msgs/String.h>

void chatterCallback(const std_msgs::String::ConstPtr& msg)
{
    // Print the received message and its length
    ROS_INFO("I heard: [%s], which has length %d", msg->data.c_str(), msg->data.length());
}

int main(int argc, char** argv)
{
    // Initialize the ROS node
    ros::init(argc, argv, "listener");
    ros::NodeHandle nh;

    // Create a subscriber for the "chatter" topic
    ros::Subscriber sub = nh.subscribe("chatter", 1000, chatterCallback);

    // Spin to receive messages
    ros::spin();

    return 0;
}

```
***
***

# Week 5 | Homework 2 <a name="week-5--homework-2"></a>
***


![Photo snapshot](https://user-images.githubusercontent.com/84252587/229272295-e1b6542b-7ab4-4a6e-8ae9-8365d9def24c.png)


## Here is the video explanation for the project:
[Demo Video link in google drive](https://drive.google.com/file/d/1iPvAKR7bgD22firaLfQysT-tfmjF4b4T/view?usp=share_link)

## source code:
> rpm_publisher.py
```py
#!/usr/bin/env python

import rospy
from std_msgs.msg import Float32

RPM = 60

def rpm_pub():
    pub = rospy.Publisher('rpm', Float32, queue_size=10)
    rospy.init_node('rpm_pub_node', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    rospy.loginfo("Publishing RPM...")
    while not rospy.is_shutdown():
        msg = Float32()
        msg.data = RPM
        pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        rpm_pub()
    except rospy.ROSInterruptException:
        pass

```

> speed_publisher.py

```py
#!/usr/bin/env python

import rospy
from std_msgs.msg import Float32

WHEEL_RADIUS = None

def speed_pub(rpm):
    global WHEEL_RADIUS
    if WHEEL_RADIUS is not None:
        speed_msg = Float32()
        speed_msg.data = (2 * WHEEL_RADIUS * 3.14159) * (rpm.data / 60)
        speed_pub_pub.publish(speed_msg)
    else:
        rospy.logwarn("No value set for wheel_radius server parameter.")

def main():
    global WHEEL_RADIUS, speed_pub_pub
    rospy.init_node('speed_pub_node', anonymous=True)
    WHEEL_RADIUS = rospy.get_param("wheel_radius", None)
    if WHEEL_RADIUS is None:
        rospy.logwarn("No value set for wheel_radius server parameter.")
    rospy.Subscriber("rpm", Float32, speed_pub)
    speed_pub_pub = rospy.Publisher('speed', Float32, queue_size=10)
    rospy.loginfo("Publishing speed...")
    rospy.spin()

if __name__ == '__main__':
    main()

```
***
***

# Week 6 | Homework 3 <a name="week-6--homework-3"></a>
***


## Here is the video explanation for the project:
[Demo Video link in google drive](https://drive.google.com/file/d/1f6M5wlDBlDd_8t_SCR9UyRb_VOKCK0lU/view?usp=share_link)

> snapshots from the project while running
![image](https://user-images.githubusercontent.com/84252587/231214558-0ea33b3b-8c04-40b1-93cd-48e0423a21d8.png)
![image](https://user-images.githubusercontent.com/84252587/231214610-d772612e-5e8a-4a8b-b70f-b0c589be6897.png)
![image](https://user-images.githubusercontent.com/84252587/231214625-5928a8ea-becc-4796-868a-596f91ac8d85.png)

> param_publisher.py

```py
#!/usr/bin/env python3

import rospy
from std_msgs.msg import Float32

def param_publisher():
    rospy.init_node('param_publisher', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    
    # Retrieve values from YAML file
    start_odometer = rospy.get_param('start_odometer')
    end_odometer = rospy.get_param('end_odometer')
    
    # Create publishers for start_odometer and end_odometer
    start_odometer_pub = rospy.Publisher('start_odometer', Float32, queue_size=10)
    end_odometer_pub = rospy.Publisher('end_odometer', Float32, queue_size=10)
    
    while not rospy.is_shutdown():
        # Publish start_odometer and end_odometer values
        start_odometer_pub.publish(start_odometer)
        end_odometer_pub.publish(end_odometer)
        
        rate.sleep()

if __name__ == '__main__':
    try:
        param_publisher()
    except rospy.ROSInterruptException:
        pass


```

> param_subscriber.py

```py
#!/usr/bin/env python3

import rospy
from std_msgs.msg import Float32

def odometer_callback(data):
    # Retrieve values from start_odometer and end_odometer topics
    start_odometer = rospy.get_param('start_odometer')
    end_odometer = rospy.get_param('end_odometer')
    
    # Calculate trip distance
    trip_distance = end_odometer - start_odometer
    
    # Store trip distance in ROS parameter server
    rospy.set_param('trip_distance', trip_distance)
    
def param_subscriber():
    rospy.init_node('param_subscriber', anonymous=True)
    
    # Subscribe to start_odometer and end_odometer topics
    rospy.Subscriber('start_odometer', Float32, odometer_callback)
    rospy.Subscriber('end_odometer', Float32, odometer_callback)
    
    rospy.spin()

if __name__ == '__main__':
    param_subscriber()


```

> parameters.yaml

```yaml
start_odometer: 0.0
end_odometer: 10.0
trip_distance: 10.0
```
***
***

# Week 7 | Homework 4 <a name="week-7--homework-4"></a>
***
### Demo Video:
<video width="320" height="240" controls>
  <source src="media/week_7_homework_4.mp4" type="video/mp4">
</video>
### Demo screenshot:

![image](https://user-images.githubusercontent.com/84252587/233168016-477a4af2-6806-4134-a4e3-a442f7850a30.png)
### Final Result Screenshot:

![image](https://user-images.githubusercontent.com/84252587/233585561-dad19001-d4f0-479a-bff6-0b4e3053c0a2.png)

### roslaunch homework_4 rpm_sim.launch

![image](https://user-images.githubusercontent.com/84252587/233588340-1aed9995-7431-4caa-b684-65113deaf502.png)

### roslaunch homework_4 speed_sim.launch wheel_radius:=0.1

![image](https://user-images.githubusercontent.com/84252587/233588447-b457215a-e63d-43d2-a6a7-3bc78ba8e2f4.png)




