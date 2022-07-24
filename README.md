# Kali Linux 2020.4 Docker Container with XFCE Desktop over VNC / noVNC, with the tools for the Florida Tech Cyber Security courses

## build & run

```
You can create a directory to clone the repo into or just use the one that gets cloned.

Copy the HTTPS url found in the button shown below:

![image](https://user-images.githubusercontent.com/54566880/180634789-6c04ef94-347e-40a7-a07b-5fff414c5544.png)


git clone https://github.com/condor0010/FIT-kali-docker
cd FIT-kali-docker
docker build -t myKali .
docker run -it -p 9020:8080 -p 9021:5900 myKali
```
