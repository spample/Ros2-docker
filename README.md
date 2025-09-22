__Docker on windows__

## WLS2 install
------
### Install WSL on windows
```
wsl --install
```
### or (if already installed) 
```
wsl --update
```
### Install WSL into computer
```
reboot
```
### Install Docker Desktop
```
https://docs.docker.com/desktop/setup/install/windows-install/
```

### Build Docker container
```
docker build -t spample/ros2-humble:1.2.0 .
```

### run docker container on windows
```
docker run -it --rm ^
-v /run/desktop/mnt/host/wslg/.X11-unix:/tmp/.X11-unix ^
-v /run/desktop/mnt/host/wslg:/mnt/wslg ^
-e DISPLAY=:0 ^
-e WAYLAND_DISPLAY=wayland-0 ^
-e XDG_RUNTIME_DIR=/mnt/wslg/runtime-dir ^
-e PULSE_SERVER=/mnt/wslg/PulseServer ^
spample/ros2-humble:1.2.0 bash 
```