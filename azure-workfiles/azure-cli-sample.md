# Azure CLI Sample Code

## Account sign in

az login

az configure

az account show

az account set --subscription ''

## Get help and find commands

az --version

az help

az network nsg --help

az find secret

## Deploy a VM

az group create --name TutorialResources --location eastus

az vm create --resource-group TutorialResources \
  --name TutorialVM1 \
  --image UbuntuLTS \
  --generate-ssh-keys \
  --output json \
  --verbose

az vm show --name TutorialVM1 --resource-group TutorialResources

az vm show --name TutorialVM1 \
  --resource-group TutorialResources \
  --query 'networkProfile.networkInterfaces[].id' \
  --output tsv

NIC_ID=$(az vm show -n TutorialVM1 -g TutorialResources \
  --query 'networkProfile.networkInterfaces[].id' \
  -o tsv)

az network nic show --ids $NIC_ID

az network nic show --ids $NIC_ID \
  --query '{IP:ipConfigurations[].publicIpAddress.id, Subnet:ipConfigurations[].subnet.id}' \
  -o json

