### Init the private chain
```
geth --datadir ~/dev/private_eth_network/ init ~/dev/private_eth_network/genesis.json
```

### Create new account
```
geth account new --datadir ~/dev/private_eth_network
```

### Start the private chain
```
geth --ws --ws.port 8545 --http --http.port 4444 --http.api personal,eth,net,web3 --mine --miner.threads=1 --datadir ~/dev/private_eth_network/ --networkid 44 --nodiscover --fakepow --allow-insecure-unlock
```

### Attach to the geth js console
```
geth attach /home/k0b3rit/dev/private_eth_network/geth.ipc
```

### Unlock account (via geth js console)
```
personal.unlockAccount(web3.eth.coinbase, "password12345", 15000)
```

