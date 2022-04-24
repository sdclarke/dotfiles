#!/bin/bash

killall -q waybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#for MONITOR in $(polybar -m | sed "s/:.*$//g")
#do
  #echo "---" >> /tmp/polybar${MONITOR}.log
  #export MONITOR
  #polybar example >>/tmp/polybar${MONITOR}.log 2>&1 &
#done

waybar 2>&1 >/dev/null &
