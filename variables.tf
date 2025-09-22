variable "application_name"{
    type=string

    validation{
        condition=length(var.application_name) <= 12
        error_message="Application Name should be less than or equal to 12 characters."
    }
}
variable "env_name" {
    type=string
}
variable api_key{
    type=string
    sensitive = true
}
variable instance_count{
    type=number

    validation{
        condition=var.instance_count>=5 && var.instance_count<10 && var.instance_count % 2 !=0
        error_message = "Instance cont must be between 5 to 10 and never even!"
    }
}
variable enabled{
    type=bool
}
variable regions{
    type=list(string)
}
variable region_instance_count{
    type=map(string)
}
variable region_set{
    type=set(string)
}
variable sku_settings{
    type=object({
      kind=string
      tier=string 
    })
}
variable "resource_group_location"{
    type=string
    default="eastus"
    description="Location of the resource group. "
}
variable "resource_group_name_prefix"{
    type=string
    default="rg"
    description="Prefix of the resource group name thats combined with random id so name is unique in azure subscription"
}