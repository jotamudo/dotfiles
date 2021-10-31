#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar -rq music -c ~/.config/polybar_back/config &
  done
else
    polybar -rq music -c ~/.config/polybar_back/config &
fi

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar -rq tray -c ~/.config/polybar_back/config &
  done
else
    polybar -rq tray -c ~/.config/polybar_back/config &
fi

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar -rq ws -c ~/.config/polybar_back/config &
  done
else
    polybar -rq ws -c ~/.config/polybar_back/config &
fi

echo "Polybar relaunched..."
