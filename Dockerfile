FROM osrf/ros:lyrical-desktop

RUN apt-get update && \
    apt-get install -y libxcb-cursor0 ros-lyrical-turtlesim && \
    apt install -y ros-lyrical-rqt ros-lyrical-rqt-common-plugins && \
    apt install -y wget && \
    apt-get install -y ros-lyrical-rviz2 ros-lyrical-turtle-tf2-py ros-lyrical-tf2-ros ros-lyrical-tf2-tools ros-lyrical-turtlesim && \
    apt install -y ros-lyrical-urdf-tutorial &&\
    apt-get install -y ros-lyrical-ros-gz
    
# Copy the startup script into the container
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

# Make the script executable
RUN chmod +x /usr/local/bin/entrypoint.sh

# Define the ENTRYPOINT to run your script
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

# Define the default application or command to run afterward
CMD ["bash"]

    
