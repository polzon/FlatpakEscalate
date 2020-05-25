#!/usr/bin/env bash

# Create overrides dir if doesn't exist already
if [ -d "~/.local/share/flatpak/overrides" ]; then
    mkdir ~/.local/share/flatpak/overrides
fi

# Give full permissions
echo  \
    "[Context]
    shared=network;ipc
    sockets=x11;wayland;fallback-x11;pulseaudio;session-bus;system-bus;ssh-auth;    pcsc;cups
    devices=dri;kvm;shm;all
    features=devel;multiarch;bluetooth;canbus
    filesystems=host;host-os;host-etc;home" \
    >> ~/.local/share/flatpak/overrides/dev.shipp.Escape