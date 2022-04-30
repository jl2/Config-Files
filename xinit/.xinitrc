#!/usr/bin/env bash

export PATH=~/bin:$PATH
export GDK_CORE_DEVICE_EVENTS=1

dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

modprobe -r nvidia_uvm nvidia_drm nvidia_modeset nvidia-vgpu-vfio nvidia
modprobe nvidia NVreg_RestrictProfilingToAdminUsers=0

~/bin/xconfig_small

exec ssh-agent /usr/local/bin/stumpwm
