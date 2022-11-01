#! /bin/bash

cat $0 | tail -3

forge create --mnemonic-path ./mnem.delme OptimismUselessToken \
	--constructor-args "Useless Token" "OUT-4" --legacy \
	--rpc-url https://goerli.optimism.io
