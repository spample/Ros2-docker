FROM osrf/ros:humble-desktop

RUN apt-get update && apt-get install -y \
    ros-humble-turtlesim \
    ros-humble-demo-nodes-cpp \
    neovim ripgrep nano
RUN echo "source /opt/ros/humble/setup.bash" >> /root/.bashrc
WORKDIR /home

COPY . .

