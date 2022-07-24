#!/bin/bash

#VNCEXPOSE="0"
#VNCPORT="5900"
#VNCPWD="changeme"
#VNCDISPLAY="1920x1080"
#VNCDEPTH="16"
#NOVNCPORT="8080"

# Set password for VNC

mkdir -p /home/kali/.vnc/
echo $VNCPWD | vncpasswd -f > /home/kali/.vnc/passwd
chmod 600 /home/kali/.vnc/passwd

# Start VNC server

# Expose VNC
vncserver :0 -rfbport $VNCPORT -geometry $VNCDISPLAY -depth $VNCDEPTH

# Start noVNC server

/usr/share/novnc/utils/launch.sh --listen $NOVNCPORT --vnc localhost:$VNCPORT

echo "Launch your web browser and open https://localhost:9020/vnc.html"
