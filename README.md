# __Docker on windows__

# WLS2 install
### Install WSL on windows
```
wsl --install
```
### or (if already installed) 
```
wsl --update
```
### Install Docker Desktop
```
https://docs.docker.com/desktop/setup/install/windows-install/
```
### Install WSL into computer
```
reboot
```

#  Post Dependecies
- Make a new folder for ros2 on your computer (make sure the folder is not connected to ONEDRIVE)

### Open folder location in terminal
- right click the folder and press "Open in Terminal"

### Initialize the github repo
```
git init
```
### Add the repo to the local git repository
```
git remote add origin https://github.com/spample/Ros2-docker.git
```
### Fetch the windows branch
```
git fetch origin windows
```

### Pull windows branch into computer
```
git pull origin windows
```

#   Docker-intructions

### Build Docker container
```
docker build -t spample/ros2-humble:1.3.0 .
```

### Run docker container on windows
```
docker run -it --rm ^
-v /run/desktop/mnt/host/wslg/.X11-unix:/tmp/.X11-unix ^
-v /run/desktop/mnt/host/wslg:/mnt/wslg ^
-e DISPLAY=:0 ^
-e WAYLAND_DISPLAY=wayland-0 ^
-e XDG_RUNTIME_DIR=/mnt/wslg/runtime-dir ^
-e PULSE_SERVER=/mnt/wslg/PulseServer ^
spample/ros2-humble:1.3.0 bash 
```

### in case it is not pasting correctly here is a one-liner command:
```
docker run -it --rm -v /run/desktop/mnt/host/wslg/.X11-unix:/tmp/.X11-unix -v /run/desktop/mnt/host/wslg:/mnt/wslg -e DISPLAY=:0 -e WAYLAND_DISPLAY=wayland-0 -e XDG_RUNTIME_DIR=/mnt/wslg/runtime-dir -e PULSE_SERVER=/mnt/wslg/PulseServer spample/ros2-humble:1.3.0 bash
```
