FROM osrf/ros:lyrical-desktop

RUN apt-get update && \
    apt-get install -y libxcb-cursor0 ros-lyrical-turtlesim && \
    apt install -y ros-lyrical-rqt ros-lyrical-rqt-common-plugins && \
    apt install -y wget && \
    apt-get install -y ros-lyrical-rviz2 ros-lyrical-turtle-tf2-py ros-lyrical-tf2-ros ros-lyrical-tf2-tools ros-lyrical-turtlesim
    


    
