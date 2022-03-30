param location string = resourceGroup().location

param tags object

@secure()
param sqlAdminPassword string

resource server 'Microsoft.Sql/servers@2021-08-01-preview' = {
  name: 'sqlserverbicepsample'
  location: location
  properties: {
    administratorLogin: 'sample-account'
    administratorLoginPassword: sqlAdminPassword
    version: '12.0'
    minimalTlsVersion: '1.2'
  }
  tags: tags
}

resource db 'Microsoft.Sql/servers/databases@2021-08-01-preview' = {
  name: '${server.name}/sql-bicep-sample'
  location: location
  sku: {
    name: 'Basic'
  }
  properties: {
    createMode: 'Default'
  }
  tags: tags
}
