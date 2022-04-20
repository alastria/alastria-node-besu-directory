# alastria-node-besu-directory
Contains the enodes list of permissioned e-nodes in Alastria-B network

## Generate the RLP encoded `extraData` string for genesis file
* https://besu.hyperledger.org/en/stable/Reference/CLI/CLI-Subcommands/#rlp

```
$ cat 2encode.json
[
"0x2d1d60dd4fdb77bc71cdeb62bade4a3606929ced",
"0x4b3cc96cc615ab4d46ac0bc8fff5cb4fa77cac92",
"0x283c714b9d58173e5f89c2f0d9476a92cf9ac9f4",
"0x7303144c5f64cee173569f2b884a22fdae835155"
]
```

```
$ besu rlp encode --from=2encode.json --type=IBFT_EXTRA_DATA
0xf87ea00000000000000000000000000000000000000000000000000000000000000000f854942d1d60dd4fdb77bc71cdeb62bade4a3606929ced944b3cc96cc615ab4d46ac0bc8fff5cb4fa77cac9294283c714b9d58173e5f89c2f0d9476a92cf9ac9f4947303144c5f64cee173569f2b884a22fdae835155808400000000c0
```
