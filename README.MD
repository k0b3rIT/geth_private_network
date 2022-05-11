
### Setup a private chain with geth
Init the private chain
```
geth --datadir ~/dev/private_eth_network/ init ~/dev/private_eth_network/genesis.json
```

Create new account
```
geth account new --datadir ~/dev/private_eth_network
```

Start the private chain
```
geth --ws --ws.port 8545 --http --http.port 4444 --http.api personal,eth,net,web3 --mine --miner.threads=1 --datadir ~/dev/private_eth_network/ --networkid 44 --nodiscover --fakepow --allow-insecure-unlock
```

Attach to the geth js console
```
geth attach /home/k0b3rit/dev/private_eth_network/geth.ipc
```

### Geth js console commands

Unlock account (via geth js console)
```
personal.unlockAccount(web3.eth.coinbase, "password12345", 15000)
```

Get account balance (in wei)
```
eth.getBalance('0x59151976ffb86c51e8f2d4ea733507c66a91a5e9')
```

Get account balance (in ether)
```
web3.fromWei(eth.getBalance('0x59151976ffb86c51e8f2d4ea733507c66a91a5e9'), "ether")
```

Get contract code
```
web3.eth.getCode('0x3F4367D737dc4D37dF0b2B5F06907bdE5083F248') //contract address
```

Get the latest block info
```
web3.eth.getBlock(web3.eth.blockNumber)
```
