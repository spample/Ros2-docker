# Installing

## Installing and naming your docker container
----
### Build your container (do this everytime you change your dockerFile)

```docker
docker build -t ros2-humble .
```
####  What does this do?
- docker build: Create an image by executing instructions in a Dockerfile found in the build context (the directory specified at the end of the command).
- -t ros2-humble: Tag the built image as “ros2-humble”
- . : Tells the docker engine to reference the current directory (the current folder we are in)

```docker
docker run -it --name ros2-container ros2-humble
```
####  what does this do?
- docker run: **creates and starts** a new container from an image
- -it: combinations of -i -t 
  - -i: **Enable the standard input** for a computer program (keyboard inputs) 
  - -t: Allocates a **TTY**(Virtual Console) so interactive programs render properly
- --name: **gives a name** to the docker container, if not given a name it receives a random and almost certainly very cringe name
- ros2-container: This is the **name** we gave our container
- ros2-humble: This is the **base image file** we are starting with

----

### Start docker container

```docker
docker start -ai ros2-container
```
####  What does this do?
- docker start: **Starts** one or more stopped containers by name or ID.
- -ai: A combinations of -a -i
  - -a: (attach) **Connects** the terminal to the container’s **standardOutput/standardError** and forwards signals (Ctrl+C, etc.).
  - -i: **Enable the standard input** for a computer program (keyboard inputs) 
- ros2-container: This is the **name** of the container we want to start/resume

---

### docker run for testing new things (to not create unnecessary containers)

```
docker run -it --rm \
  --net=host \
  -e DISPLAY=$DISPLAY \
  -e QT_QPA_PLATFORM=xcb \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  ros2-humble \
  bash
```


####  What does this do?

- docker run: Starts a new container from an image and executes a command inside it.

- -it: Combines -i (keep STDIN open) and -t (allocate a TTY) so an interactive shell can be used.

- --rm: Automatically removes the container when it exits to avoid leftover stopped containers.

- --net=host: Uses the host network namespace, so the container shares the host’s network stack (no port mapping, same localhost), which simplifies ROS2 discovery and networking in many setups.

- -e DISPLAY=$DISPLAY: Passes the host’s DISPLAY environment variable so X11 clients in the container know which display to connect to.

- -e QT_QPA_PLATFORM=xcb: Forces Qt apps to use the XCB (X11) backend, helpful when Wayland is default; ensures Qt-based ROS GUIs like rqt/rviz2 use X11.

- -v /tmp/.X11-unix:/tmp/.X11-unix: Mounts the X11 Unix socket from the host into the container, allowing GUI apps in the container to talk to the host X server.

- ros2-humble: The Docker image to run (ROS 2 Humble).

- bash: The command to execute inside the container, giving an interactive shell prompt.


### Docker run
```
docker run -it \
  --name ros2-container \
  --net=host \
  -e DISPLAY=$DISPLAY \
  -e QT_QPA_PLATFORM=xcb \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  ros2-humble \
  bash
```
