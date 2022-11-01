#! /bin/bash

echo Get current balance
echo 'cast call $1 "balanceOf(address)" 0x8941f316ab4734a08ea97d6c7f797e386cd7ce98 --rpc-url https://goerli.optimism.io | cast --to-dec | cast --from-wei'
cast call $1 "balanceOf(address)" 0x8941f316ab4734a08ea97d6c7f797e386cd7ce98 \
	--rpc-url https://goerli.optimism.io | cast --to-dec | cast --from-wei


echo ---------

echo Call the faucet
echo 'cast send --mnemonic-path ./mnem.delme $1 "faucet()" --legacy --rpc-url https://goerli.optimism.io'
cast send --mnemonic-path ./mnem.delme $1 "faucet()" \
	--legacy --rpc-url https://goerli.optimism.io

echo ---------


echo Get new balance
echo 'cast call $1 "balanceOf(address)" 0x8941f316ab4734a08ea97d6c7f797e386cd7ce98 --rpc-url https://goerli.optimism.io | cast --to-dec | cast --from-wei'
cast call $1 "balanceOf(address)" 0x8941f316ab4734a08ea97d6c7f797e386cd7ce98 \
	--rpc-url https://goerli.optimism.io | cast --to-dec | cast --from-wei


echo ---------


echo View on Etherscan
echo https://goerli-optimism.etherscan.io/address/$1

