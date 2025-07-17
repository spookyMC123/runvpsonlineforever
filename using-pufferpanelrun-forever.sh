#!/bin/bash

echo "🚀 Starting your app..."

# Your command, like PufferPanel or Minecraft server
nohup pufferpanel run > panel.log 2>&1 &

# Fake activity to delay Codespace timeout (still limited to ~30 min)
while true; do
  echo "🟢 Still running: $(date)"
  sleep 60
done
