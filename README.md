# Kali Linux 2020.4 Docker Container with XFCE Desktop over VNC / noVNC, with the tools for the Florida Tech Cyber Security courses

## Linux build and run instructions

You can create a directory to clone the repo into or just use the one that gets cloned.

In the terminal do the following commands:

```
git clone https://github.com/condor0010/FIT-kali-docker.git

cd FIT-kali-docker

docker build -t cyber_vnc .

```
The name "cyber_vnc" can be swapped out for whatever you'd like to name the image.

Next:
(Order MATTERS for this line of commands)

```
docker run -ti -p 9020:8080 -p 9021:8080 --name=cyber_vnc cyber_vnc

```
