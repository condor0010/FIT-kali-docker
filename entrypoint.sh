#!/bin/bash

# Set password for VNC

sudo rm /tmp/.X0-lock \
	/tmp/.X11-unix/X0 \
	> /dev/null 2>&1

mkdir -p /home/kali/.vnc/
echo $VNCPWD | vncpasswd -f > /home/kali/.vnc/passwd
chmod 600 /home/kali/.vnc/passwd

# Start VNC server
vncserver :0 -rfbport $VNCPORT -geometry $VNCDISPLAY -depth $VNCDEPTH -localhost \
  > /dev/null 2>&1 &

# Start noVNC server

/usr/share/novnc/utils/launch.sh --listen $NOVNCPORT --vnc localhost:$VNCPORT \
  > /dev/null 2>&1 &

echo "Launch your web browser and open http://localhost:9020/vnc.html"

/bin/bash
