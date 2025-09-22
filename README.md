# Docker on MacOS

## MacOS Installation Process
### Install Docker Desktop
```
https://www.docker.com/products/docker-desktop/
```
- Choose the correct download file depending on your **CPU**
- You can check which type of CPU you have by going to the top left of your screen and clicking the '**about**' on your mac book
### Test that docker is running correctly
```
docker run hello-world
```
##  Test ROS2 Docker
```
docker run -it --rm \
  --net=host \
  -e DISPLAY=$DISPLAY \
  -e QT_QPA_PLATFORM=xcb \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  utsarobotics/ros2-humble:1.0.0 \
  bash
```
## Create a ROS2 container (same as previous command but without "--rm")
```
docker run -it \
  --net=host \
  -e DISPLAY=$DISPLAY \
  -e QT_QPA_PLATFORM=xcb \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  utsarobotics/ros2-humble:1.0.0 \
  bash
```
