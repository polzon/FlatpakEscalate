#!/usr/bin/env bash

# Build and create repo
flatpak-builder --repo=SandboxEscape --force-clean build-dir dev.shipp.Escape.json
flatpak build-update-repo SandboxEscape

# Add and install the repo
flatpak --user remote-add --no-gpg-verify sandbox-escape SandboxEscape
flatpak --user -y remove dev.shipp.Escape
flatpak --user -y install sandbox-escape dev.shipp.Escape

# Run the program
flatpak run dev.shipp.Escape