#!/bin/bash

az login --use-device-code

az account list -otable

read -p "Subscription ID:" sub

az account set --subscription $sub

read -p "Non-Existing Resource Group Name:" rgName

az group create -n $rgName -l germanywestcentral > /dev/null

az deployment group create -g $rgName -f ./main.bicep

