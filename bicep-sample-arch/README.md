# Bicep Sample

## Authenticate using Azure CLI

```bash
# Authenticate with Azure
az login --use-device-code

# Use desired Azure subscription
az account set --subscription <SUBSCRIPTION_ID_OR_NAME>
```

## Provision the sample infrastructure

```bash
# create a resource group (FIRST TIME ONLY)
az group create -n rg-bicep-sample -l germanywestcentral

```

```bash
# Provision the infrastructure
az deployment group create -g rg-bicep-sample -f ./main.bicep
```

### Update the sample infrastructure

This assumes you've made some changes (eg provide another value for the `image_tag` variable).

```bash
# Update the sample infrastructure
az deployment group create -g rg-bicep-sample -f ./main.bicep
```

### Destroy the sample infrastructure

```bash
# Destroy the sample infrastructure
az group delete -n rg-bicep-sample --no-wait --yes
```
