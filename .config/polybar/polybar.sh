#!/bin/bash

# Terminate already running bar instances
killall -q polbar

#wait untill the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#launch polybar
polybar example -r &
