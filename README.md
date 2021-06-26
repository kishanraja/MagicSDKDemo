# MagicSDKDemo

### Step to reproduce 
1. Click on center Get Arts button.
2. Log will be printed result in debug area.


We are following this step : https://magic.link/docs/blockchains/ethereum#read-from-contract-2

Here is my contract address : 0x86F000449934Ac9Bf0c137f5A7c14F4950344Cb2

Here is the ABI: 
[{"inputs":[{"internalType":"uint256","name":"","type":"uint256"}],"name":"arts","outputs":[{"internalType":"string","name":"","type":"string"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getArts","outputs":[{"internalType":"string[]","name":"","type":"string[]"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"string","name":"_art","type":"string"}],"name":"storeArt","outputs":[],"stateMutability":"nonpayable","type":"function"}]

Here is the error: 
The operation couldn’t be completed. (MagicSDK_Web3.ABIDecoder.Error error 3.)

Hex string which we get in call responce :
0x00000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000003000000000000000000000000000000000000000000000000000000000000006000000000000000000000000000000000000000000000000000000000000000a000000000000000000000000000000000000000000000000000000000000000e0000000000000000000000000000000000000000000000000000000000000000352656400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005477265656e00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000064f72616e67650000000000000000000000000000000000000000000000000000

function name : getArts
