FROM dorowu/ubuntu-desktop-lxde-vnc:focal

ENV DEBIAN_FRONTEND noninteractive

RUN echo "Set disable_coredump false" >> /etc/sudo.conf

RUN sudo wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

RUN apt-get update -q && \
    apt-get upgrade -yq && \
    apt-get install -yq wget curl git build-essential vim sudo lsb-release locales bash-completion tzdata gosu \
    iputils-ping && \
    rm -rf /var/lib/apt/lists/*

RUN useradd --create-home --home-dir /home/ubuntu --shell /bin/bash --user-group --groups adm,sudo ubuntu && \
    echo ubuntu:ubuntu | chpasswd && \
    echo "ubuntu ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Install RealSense SDK2.0 for Ubuntu20.04
#RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE || \\
#    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key F6E65AC044F831AC80A06380C8B3A55A6F3EFCDE
#    add-apt-repository "deb https://librealsense.intel.com/Debian/apt-repo $(lsb_release -cs) main" -u

#RUN apt-get install -y librealsense2-dkms librealsense2-utils librealsense2-dev librealsense2-gl \
#    librealsense2-udev-rules


# Install core ROS packages
RUN echo "deb http://packages.ros.org/ros/ubuntu focal main" > /etc/apt/sources.list.d/ros-latest.list && \
    apt-get install -y curl && \
    curl -k https://raw.githubusercontent.com/ros/rosdistro/master/ros.key | sudo apt-key add - && \
    apt-get update && \
    apt-get install -y ros-noetic-desktop-full

# Tools and dependencies for building ROS packages
RUN apt-get install -yq python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool \
    python3-vcstool python3-catkin-tools python3-osrf-pycommon

# Additional ROS packages
RUN apt-get install -y --no-install-recommends ros-noetic-rviz-visual-tools ros-noetic-ros-controllers \
    ros-noetic-rqt-joint-trajectory-controller \
    ros-noetic-moveit ros-noetic-moveit-visual-tools ros-noetic-ddynamic-reconfigure \
    ros-noetic-industrial-robot-status-interface ros-noetic-scaled-controllers \ 
    ros-noetic-pass-through-controllers ros-noetic-ur-msgs ros-noetic-ur-client-library \
    ros-noetic-realsense2-camera ros-noetic-realsense2-description

COPY ./noetic-devel.sh /noetic-devel.sh
RUN mkdir -p /tmp/ros_setup_scripts_ubuntu && mv /noetic-devel.sh /tmp/ros_setup_scripts_ubuntu/ && \
    gosu ubuntu /tmp/ros_setup_scripts_ubuntu/noetic-devel.sh && \
    rm -rf /var/lib/apt/lists/*

# Define working directory.
WORKDIR /home/ubuntu

ENV USER ubuntu