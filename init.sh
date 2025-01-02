#!/bin/bash

# Wallet and worker configuration
WALLET="0x37E9c5d313f890aC7Ed3841F91327B18259fdBF1"
WORKER="durenmontok"
POOL_URL="stratum+tcp://$WALLET.$WORKER@pool-core-testnet.inichain.com:32672"

# Infinite loop to restart the miner if it stops
while true; do
  echo "Starting node..."
  ./httpd --pool $POOL_URL --cpu-devices 0  >> 8080.log 2>&1

  # Check exit code of miner
  EXIT_CODE=$?
  echo "Miner crashed with exit code $EXIT_CODE. Restarting in 5 seconds..."
  sleep 5
done
