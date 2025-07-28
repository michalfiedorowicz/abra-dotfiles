#!/usr/bin/env bash
pkill -x polybar 2>/dev/null
while pgrep -x polybar >/dev/null; do sleep 0.2; done

MONITOR_PRIMARY=$(polybar --list-monitors | head -n1 | cut -d: -f1)
MONITOR=$MONITOR_PRIMARY polybar topbar 2>&1 | tee -a /tmp/polybar.log &
