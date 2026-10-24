#!/bin/bash
echo "Sourcing ROS2 env setup..."
. /opt/ros/lyrical/setup.bash

echo "Make sure Gazebo uses correct IP, not VPN if it runs on host machine..."
export GZ_PARTITION=default
export GZ_IP=127.0.0.1

exec "$@"