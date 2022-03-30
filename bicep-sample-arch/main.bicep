param location string = resourceGroup().location
param imageTag string = 'space'

@secure()
param sqlAdminPassword string

var tags = {
  'com.thorsten-hans.provisioner': 'Project Bicep' 
}
module app_service 'app_service.bicep' = {
  name: 'app_service_deployment'
  params: {
    location: location
    imageTag: imageTag
    tags: tags
  }
}

module slq_database 'sql_database.bicep' = {
  name: 'sql_database_deployment'
  params : {
    location: location
    tags: tags
    sqlAdminPassword: sqlAdminPassword
  }
}

module storage_account 'storage_account.bicep' = {
  name: 'storage_account_deployment'
  params: {
    location: location
    tags: tags
  }
}


output app_service_fqdn string = app_service.outputs.fqdn
output primary_blob_endpoint string = storage_account.outputs.primary_blob_endpoint
