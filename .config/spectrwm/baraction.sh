#!/bin/sh

while true; do

# Kernel
kernel="$(uname -sr)"

# IP address
# ip="$(ifconfig  | grep 'inet addr:'| grep -v '127.0.0.1' | cut -d: -f2 | awk '{ print $1}')"

# Uptime
# uptime="$(uptime | awk -F, '{sub(".*up ",x,$1);print $1}' | sed -e 's/^[ \t]*//')"

# Packages
pkg="$(xbps-query -l | wc -l )"

# Volume
volDec="$(sndioctl | grep 'output.level' | sed 's/output.level=//')"
vol=$(awk -vn=$volDec 'BEGIN{print(n*100)}')

# Battery status
# bat="$(apm -l)"

# Date
date="$(date +%Y-%m-%d) $(date +%H:%M)"

# Username
user="$(whoami)@$(hostname)"

# Print
echo "V: $vol%  /  P: $pkg  /  $date  /  $user "

sleep 1
done
exit 0
