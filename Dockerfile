FROM osrf/ros:humble-desktop

RUN apt-get update && apt-get install -y \
    ros-humble-demo-nodes-cpp \
    neovim ripgrep

WORKDIR /home

COPY . .

