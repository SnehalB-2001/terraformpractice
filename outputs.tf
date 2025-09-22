output "application_name"{
    value=var.application_name
}
output "env_name"{
    value=var.env_name
}
output "environment_prefix"{
    value=local.environment_prefix
}
output "api_key"{
    value=var.api_key
    sensitive=true
}
output suffix{
    value=resource.random_string.suffix.result
}
output primary_region{
    value=var.regions[0]
}
output primary_region_instance{
    value=var.region_instance_count["westus"]
}
output kind{
    value=var.sku_settings.kind
}
output "list" {
  value=resource.random_string.list[0].result
  //value1=resource.random_string.list[1].result
}
output "map" {
  value=resource.random_string.map["eastus"].result
}
output "resource_group_name"{
    value=azurerm_resource_group.my-rg.name
}