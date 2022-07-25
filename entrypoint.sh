#!/bin/bash

# Set password for VNC

mkdir -p /home/kali/.vnc/
echo $VNCPWD | vncpasswd -f > /home/kali/.vnc/passwd
chmod 600 /home/kali/.vnc/passwd

# Start VNC server
vncserver :0 -rfbport $VNCPORT -geometry $VNCDISPLAY -depth $VNCDEPTH -localhost

# Start noVNC server

/usr/share/novnc/utils/launch.sh --listen $NOVNCPORT --vnc localhost:$VNCPORT

echo "Launch your web browser and open https://localhost:9020/vnc.html"
