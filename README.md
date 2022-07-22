# Kali Linux 2020.4 Docker Container with XFCE Desktop over VNC / noVNC, has the tools for the cyberclasse aswell, also dose not have the bug where xorg shits itself on subsiquent runs

## build & run

```
git clone https://github.com/condor0010/FIT-kali-docker
cd FIT-kali-docker
docker build -t myKali .
docker run -it -p 9020:8080 -p 9021:5900 myKali
```
