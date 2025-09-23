# __Docker on windows__

# WLS2 install
### Install WSL on windows
- Paste this next line into your windows terminal
```
wsl --install
```
### or (if already installed) 
- This will update your "Windows Subsystem for Linux" if you already have it installed
```
wsl --update
```
### Install Docker Desktop
- Go to this website and download the appropriate Docker Desktop installation
```
https://docs.docker.com/desktop/setup/install/windows-install/
```
### Reboot computer when asked to
----
#  Post Dependecies
- Make a new folder for ros2 on your computer (make sure the folder is not connected to ONEDRIVE)
## Open folder location in terminal
- right click the folder and press "Open in Terminal"
### Grab necessary files from github
```
git init
git remote add origin 
git remote add origin https://github.com/spample/Ros2-docker.git
git fetch origin windows
git pull origin windows
```
#   Docker-intructions
### Test that docker is running correctly
```
docker run hello-world
```
## Run test docker container on windows
```
docker run -it --rm -v /run/desktop/mnt/host/wslg/.X11-unix:/tmp/.X11-unix -v /run/desktop/mnt/host/wslg:/mnt/wslg -e DISPLAY=:0 -e WAYLAND_DISPLAY=wayland-0 -e XDG_RUNTIME_DIR=/mnt/wslg/runtime-dir -e PULSE_SERVER=/mnt/wslg/PulseServer spample/ros2-humble:1.3.0 bash
```
## Create a ROS2 container (same as previous command but without "--rm")

```
docker run -it -v --name ros2-container /run/desktop/mnt/host/wslg/.X11-unix:/tmp/.X11-unix -v /run/desktop/mnt/host/wslg:/mnt/wslg -e DISPLAY=:0 -e WAYLAND_DISPLAY=wayland-0 -e XDG_RUNTIME_DIR=/mnt/wslg/runtime-dir -e PULSE_SERVER=/mnt/wslg/PulseServer spample/ros2-humble:1.3.0 bash
```
