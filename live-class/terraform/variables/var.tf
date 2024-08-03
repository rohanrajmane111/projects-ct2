variable "x" {
    default = 100
}   

# var.name of the varible

variable "y_list" {
  default = [1, 2, 3]
}

variable "z_map" {
  default = {
    x = 10
    y = 20
  }
}

output "x" {
  value = var.x
}

output "y" {
  value = var.y_list
}

output "z" {
  value = var.z_map
}

output "y_1" {
  value = var.y_list[1]
}

output "z_x" {
  value = var.z_map["x"]
}


variable "env" {}
output "env" {
  value = var.env
}

output "env-name" {
  value = "Environment Name - ${var.env} - ${upper(var.env)}"
}

# Only use quotes when u have string values ""
// Files name that TF undertands it is a varible Files

// 1. var.tf
// 2. *.tfvars  {dev, prod, test}
// 3. *.auto.tfvars 