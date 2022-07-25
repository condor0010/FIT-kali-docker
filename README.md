# Kali Linux 2020.4 Docker Container with XFCE Desktop over VNC / noVNC, with the tools for the Florida Tech Cyber Security courses

## build & run

```
You can create a directory to clone the repo into or just use the one that gets cloned.

Copy the HTTPS url found in the button shown below:
```
<p align="center">
![Screenshot from 2022-07-24 02-11-57](https://user-images.githubusercontent.com/54566880/180634911-c30016db-b0ad-4f1f-9b0a-94bae55c28c5.png)
</p>
```
git clone https://github.com/condor0010/FIT-kali-docker
cd FIT-kali-docker
docker build -t myKali .
docker run -it -p 9020:8080 -p 9021:5900 myKali
```
