param location string = resourceGroup().location

param tags object

resource sa 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: 'sabicepsample'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    accessTier: 'Hot'
  }
  kind: 'StorageV2'
  tags: tags
}

output primary_blob_endpoint string = sa.properties.primaryEndpoints.blob
