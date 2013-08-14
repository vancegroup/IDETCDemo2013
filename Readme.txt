Low Cost VR Demo - IDETC 2013
3 device configurations


1) Wiimote (head tracking) + Hydra (interaction)

VRPN info:
Tracker0@localhost - wiimote head tracker
Hydra0@localhost - hydra interaction


2) Hydra (head tracking and interaction)

VRPN info:
Hydra0@localhost - hydra head tracker and interaction


3) Kinect (head tracking and interaction)

VRPN info:
Tracker00@localhost

VRPN position 0 - head
VRPN position 14 - right hand
VRPN position 8 - left hand

VRPN Button 0 - right grasp
VRPN Button 1 - left grasp


Required Software:

VRPN - https://github.com/rpavlik/vrpn
KiwiVR - https://github.com/vancegroup/KiwiVR
Base JCONF files - https://github.com/vancegroup/modular-stock-jconf
VR-Jugglua - https://github.com/vancegroup/vr-jugglua

Instructions:

Download precompiled binaries of VR-Jugglua (if you're on Windows).  Otherwise, download and compile.
Download and compile VRPN.
Configure and start VRPN (if using wiimote or Hydra).
Configure and start KiwiVR using the provided Kinect .xml settings.  This sets up the voice commands
that will be recognized.
Start NavTestbed executable and pass in the appropriate base JCONF files for the display that you want to use
as well as the appropriate mixin which sets device specific settings.
