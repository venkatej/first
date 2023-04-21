provider "azurerm" {}
client_id = "b5a9f1ce-8090-486e-b179-9343ae7bf91f"
client_cd = "dO78Q~pfOmhOvDPFVbZub~5SU-FVlJGU.0ph-aIY"
tenant_id = "10a16b89-1477-4358-bc1e-750a9a1b1ce6"
subscription_id = "733d40a2-d2b2-419c-b850-cf0ac3fd7d32"

resource azurerm_resource_group "rg" {
    name = "venkat"
    location = "EastUs"
}