resource random_string suffix{
    length=6
    special=false
    upper=false
}
locals{
    environment_prefix="${var.application_name}-${var.env_name}"
}
resource random_string list{
    count=length(var.regions)

    length=6
    upper=false
    special=false
}
resource random_string map{
    for_each=var.region_instance_count

    length=8
    lower=false
    numeric=false
}
resource random_string if{
    count=var.enabled ? 1 : 0

    length=7
    upper=false
}
module "alpha"{
    source="./modules/rando"
}
