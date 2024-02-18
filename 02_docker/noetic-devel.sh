#!/usr/bin/env bash
set -eu

ls /etc/ros/rosdep/sources.list.d/20-default.list > /dev/null 2>&1 && sudo rm /etc/ros/rosdep/sources.list.d/20-default.list
sudo rosdep init 
rosdep update

echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
echo "source `catkin locate --shell-verbs`" >> ~/.bashrc
echo "export ROS_IP=127.0.0.1" >> ~/.bashrc
echo "export ROS_MASTER_URI=http://\$ROS_IP:11311" >> ~/.bashrc

echo ""
echo "Success installing ROS noetic"
echo "Run 'source ~/.bashrc'"
