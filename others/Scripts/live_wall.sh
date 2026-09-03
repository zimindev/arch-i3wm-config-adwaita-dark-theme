#!/bin/bash
VIDEO_PATH="/home/domino/Video/zen.webm"
LOG="/home/domino/Logs/debug.log"

# Stop last run
killall -9 xwinwrap mpv 2>/dev/null

# New start
xwinwrap -g 1920x1080+0+0 -ni -un -ov -d -- \
  mpv --loop=inf --no-audio --wid=%WID% --hwdec=auto --vo=gpu "$VIDEO_PATH" &> "$LOG" &

# Check after 3sec
sleep 3
if pgrep mpv >/dev/null; then
  echo "Nice!"
else
  echo "Error, check logs:"
  cat "$LOG"
  exit 1
fi