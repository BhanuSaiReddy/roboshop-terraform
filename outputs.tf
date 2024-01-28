output "vpc" {
  value = data.aws_subnets.subnets.ids
}

#output "vpc" {
 # value = module.vpc
#}

resource "null_resource" "dev_resource" {
  provisioner "local-exec" {
    command = "echo -e '\e[34mDEV SETUP COMPLETED SUCCESSFULLY\e[0m'"
  }
}

