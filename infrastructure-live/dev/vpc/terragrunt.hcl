# If we run terrafor
include "root"{
  path = find_in_parent_folders("root.hcl")
}
terraform{
    source = "../../../../infrastructure-modules\vpc"
}

# inputs block, we are passing the values for the variables defined in the module.
inputs = {
    vpc_cidr = "10.0.0.0/16"
    subnet_cidrs = "10.0.1.0/24"
    vpc_tags = {
        Name = "my-vpc"
    }
    subnet_tags = {
        Name = "my-subnet"
    }
}