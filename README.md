# Terraform vs Bicep

This repository contains Infrastructure-as-Code (IaC) for a fairly simple Azure Architecture.

The same architecture has been coded twice (once with Bicep and once with Terraform) to demonstrate the differences.

Each implementation contains a shell script that shows how to deploy the architecture.

- [deploy.sh for Bicep](bicep-sample-arch/deploy.sh)
- [deploy.sh for Terraform](tf-sample-arch/deploy.sh)

Check the corresponding READMEs

- [README for Bicep](bicep-sample-arch/README.md)
- [README for Terraform](tf-sample-arch/README.md)

Both projects come with dedicated DevContainer

## Terraform DevContainer

- latest Azure CLI `az` is installed
- Terraform CLI `terraform` is installed (currently version `1.1.7`)
- Terraform extensions from HashiCorp (`hashicorp.terraform`) is installed
  
## Bicep DevContainer

- latest Azure CLI `az` is installed
- Bicep extension from Microsoft (`ms-azuretools.vscode-bicep`) is installed

## Authentication with Azure

Because both projects are designed to work independently you have to login explicitly in each DevContainer using `az login --use-device-code`
