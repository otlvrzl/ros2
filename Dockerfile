FROM osrf/ros:lyrical-desktop

RUN apt-get update && \
    apt-get install -y libxcb-cursor0 ros-lyrical-turtlesim && \
    apt install ros-lyrical-rqt ros-lyrical-rqt-common-plugins 
    


    
