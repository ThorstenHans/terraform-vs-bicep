param location string = resourceGroup().location
param tags object
param imageTag string = 'space'

resource asp 'Microsoft.Web/serverfarms@2021-03-01' = {
  name: 'asp-bicep-sample'
  location: location
  kind: 'linux'
  sku: {
    name: 'S1'
  }
  properties: {
    reserved: true
  }
  tags: tags
}

resource as 'Microsoft.Web/sites@2021-03-01' = {
  name: 'as-bicep-sample-webinar'
  location: location
  properties: {
    serverFarmId: asp.id
    siteConfig: {
      alwaysOn: true
      linuxFxVersion: 'DOCKER|thorstenhans/gopher:${imageTag}'
    }
  }
  tags: tags
}

output fqdn string = as.properties.defaultHostName
