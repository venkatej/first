@minLength(5)
@maxLength(12)
@description('provide he name of the description')
param acrName string = 'acr${uniqueString(resourceGroup().id)}'
@description('provide the location of arc')
param location string = resourceGroup().location
@description('provide the sku of arc')
param acrsku string = 'basic'

resource acrResource 'Microsoft.ContainerRegistry/registries@2023-01-01-preview' = {
  name: acrName
  location: location
  sku: {
    name: acrsku
  }
  properties: {
    adminUserEnabled: true
  }

}
@description('container registry output')
output loginServer string = acrResource.properties.loginServer
