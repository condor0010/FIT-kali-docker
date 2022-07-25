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
On your host machine create a folder/directory called cyber_class (or another name of your choosing).  
(Order MATTERS for this line of commands)

```
docker run -ti -p 9020:8080 -p 9021:8080 -v /home/cyber_class:/home/shared --name=cyber cyber_vnc
```

Once again the you can choose the name you prefer after "--name" and it can match the image name you already used. The ones called "cyber_vnc" in the example commands have to be the same to work though. 

Also if you plan to run more than one container of this image, use a different set of ports or they could conflict. Ex: instead of 9020 and 9021, use 9030 and 9031. 
