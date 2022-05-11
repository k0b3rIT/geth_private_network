#!/bin/bash
geth --ws --ws.port 8545 --http --http.port 4444 --http.api personal,eth,net,web3 \
 --mine --miner.threads=1 --datadir ~/dev/private_eth_network/ --networkid 44 \
 --nodiscover --fakepow --allow-insecure-unlock --verbosity 4 --vmdebug --metrics --metrics.addr 127.0.0.1 --metrics.port 8060 \
 --metrics.influxdb --metrics.influxdb.username admin --metrics.influxdb.password admin --metrics.influxdb.endpoint http://localhost:8086 --metrics.influxdb.database geth
