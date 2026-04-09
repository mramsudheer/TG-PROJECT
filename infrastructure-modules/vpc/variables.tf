variable "vpc_cidr" {
    description = "The CIDR block for the VPC"
    type        = string
    default = "10.0.0.0/16"
}
variable "vpc_tags" {
    description = "A map of tags to assign to the VPC"
    type        = map(string)
    default     = {}
}
variable "subnet_cidrs" {
    description = "A list of CIDR blocks for the subnets"
    type        = string
    default     = "10.0.1.0/24"
}
variable "subnet_tags" {
    description = "A map of tags to assign to the subnets"
    type        = map(string)
    default     = {}
}