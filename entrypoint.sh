#!/bin/bash

# Set password for VNC

mkdir -p /home/kali/.vnc/
echo $VNCPWD | vncpasswd -f > /home/kali/.vnc/passwd
chmod 600 /home/kali/.vnc/passwd

# Start VNC server

if [ $VNCEXPOSE = 1 ]
then
  # Expose VNC
  vncserver :0 -rfbport $VNCPORT -geometry $VNCDISPLAY -depth $VNCDEPTH
else
  # Localhost only
  vncserver :0 -rfbport $VNCPORT -geometry $VNCDISPLAY -depth $VNCDEPTH -localhost
fi

# Start noVNC server

/usr/share/novnc/utils/launch.sh --listen $NOVNCPORT --vnc localhost:$VNCPORT

echo "Launch your web browser and open https://localhost:9020/vnc.html"
/bin/bash
