#!/bin/bash

echo "To copy from server type 0 (default). To copy to server type 1"
read mode

if [[ -z "$mode" ]]; then
	mode="0"
fi

echo "Enter path to copy file from: "
read pathFrom

echo "Enter path to save file to: "
read pathTo

if [[ $mode -eq "0" ]]; then
	pathTo=${pathTo/[~]/$HOME}
	scp $VPN_SERVER_LOGIN:$pathFrom $pathTo
else
	pathFrom=${pathFrom/[~]/$HOME}
	scp $pathFrom $VPN_SERVER_LOGIN:$pathTo
fi

