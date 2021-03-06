#!/bin/bash

# Remove Linux headers
dpkg --list | awk '{ print $2 }' | grep linux-headers | xargs apt-get -y purge

# Remove X11 packages
apt-get -y purge libx11-data xauth libxmuu1 libxcb1 libx11-6 libxext6

# Remove outdated networking packages
apt-get -y purge ppp pppconfig pppoeconf

apt-get -y autoremove
apt-get -y clean

rm -rf VBoxGuestAdditions_*.iso VBoxGuestAdditions_*.iso.?
