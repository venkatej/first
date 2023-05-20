provider "azurerm" {
client_id = "zxcxvcbvnb"
client_cd = "dfxfcfbvnmbj,nm./,fdfgdfghfhgj"
tenant_id = "czfdgfhgjh"
subscription_id = "efesfdgfthfhg"
features {}
}

resource "azurerm_resource_group" "rg" {
    name = "venkat"
    location = "EastUs"
}

resource "azurerm_container_registry" "mycon" {
    name = "venkat-registory"
    location = "south-central-us"
    resource_group_name = "venkat"
    sku = "premium"
    data_endpoint_enabled = "true"
}
resource "azurerm_container_registry_scope_map" "myscope" {
    name = "this is my scope"
    location = "south_central_us"
    container_registry_name = azurerm_container_registry.mycon.name
    resource_group_name = azurerm_container_registry.mycon.resource_group_name
    actions = [
    "repositories/hello-world/content/delete",
    "repositories/hello-world/content/read",
    "repositories/hello-world/content/write",
    "repositories/hello-world/metadata/read",
    "repositories/hello-world/metadata/write",
    "gateway/examplecr/config/read",
    "gateway/examplecr/config/write",
    "gateway/examplecr/message/read",
    "gateway/examplecr/message/write",

    ]
}
resource "azurerm_container_registry_token" "token" {
    name = "this is token"
    container_registry_name = azurerm_container_registry.mycon.name
    resource_group_name = azurerm_container_registry.mycon.resource_group_name
    scope_map_id = azurerm_container_registry_scope_map.myscope.id
}
resource "azurerm_container_connected_registry" "connect"{
    
}
