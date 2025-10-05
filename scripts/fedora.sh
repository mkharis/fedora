#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Upgrade the container and install packages
dnf copr enable alternateved/eza -y
dnf copr enable atim/lazygit -y
dnf copr enable atim/starship -y
dnf upgrade -y
grep -v '^#' ./fedora.packages | xargs dnf install -y
