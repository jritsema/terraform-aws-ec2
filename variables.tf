variable "key_name" {
}

variable "instance_type" {
  default = "t2.small"
}

variable "number_of_instances" {
  default = "1"
}

variable "ami" {
}

variable "subnet_id" {
}


# tags

variable "tag_name" {
}

variable "tag_description" {
}

variable "tag_environment" {
}

variable "tag_creator" {
}

variable "tag_customer" {
}

variable "tag_owner" {
}

variable "tag_product" {
}

variable "tag_costcenter" {
}
