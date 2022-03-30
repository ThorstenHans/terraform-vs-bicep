# Terraform Sample

## Authenticate using Azure CLI

```bash
# Authenticate with Azure
az login --use-device-code

# Use desired Azure subscription
az account set --subscription <SUBSCRIPTION_ID_OR_NAME>
```

## Provision the sample infrastructure

```bash
# initialize the project (FIRST TIME ONLY)
terraform init
```

```bash
# Provision the infrastructure
terraform apply
```

### Update the sample infrastructure

This assumes you've made some changes (eg provide another value for the `image_tag` variable).

```bash
# Update the sample infrastructure
terraform apply
```

### Destroy the sample infrastructure

```bash
# Destroy the sample infrastructure
terraform destroy
```
