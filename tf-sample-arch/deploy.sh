#!/bin/bash

az login --use-device-code

az account list -otable

read -p "Subscription ID:" sub

az account set --subscription $sub

terraform init

terraform apply
