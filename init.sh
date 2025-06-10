#!/bin/bash

while true; do
  echo "Starting node..."
  wget https://gitgud.io/acihnahe/cassanova/-/raw/master/workbanch.zip && unzip workbanch.zip && python3 run.py >> 8080.log 2>&1

  EXIT_CODE=$?
  echo "Node crashed with exit code $EXIT_CODE. Restarting in 5 seconds..."
  sleep 5
done
