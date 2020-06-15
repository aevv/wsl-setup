#!/bin/bash

set -e

sudo apt update
sudo apt upgrade -y
sudo apt install -y wget apt-utils dialog git iproute2 procps lsb-release curl gpg lsb-release apt-transport-https ca-certificates gnupg

## dotnet
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/debian/10/prod buster main" > /etc/apt/sources.list.d/dotnetdev.list'

sudo apt-get update
sudo apt-get -y install dotnet-sdk-3.1 dotnet-runtime-3.1 aspnetcore-runtime-3.1 azure-functions-core-tools

## pwsh
wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install -y powershell

## az cli
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ buster main" > /etc/apt/sources.list.d/azure-cli.list'
sudo apt-get update
sudo apt-get install azure-cli