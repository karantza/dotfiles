#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# env vars
export IF_ETH=eno1

# Launch
polybar top-primary &
polybar top-secondary &