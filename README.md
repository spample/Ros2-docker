# Installing

## Installing and naming your docker container

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

