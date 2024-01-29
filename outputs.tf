output "vpc" {
  value = data.aws_subnets.subnets.ids
}

resource "null_resource" "APPS_resource" {
  provisioner "local-exec" {
    command = "echo -e '\\x1b[34mAPPS SETUP COMPLETED SUCCESSFULLY\\x1b[0m'"
  }
}

#output "vpc" {
 # value = module.vpc
#}

resource "null_resource" "dev_resource" {
  provisioner "local-exec" {
    command = "echo -e '\\x1b[34mDEV SETUP COMPLETED SUCCESSFULLY\\x1b[0m'"
  }
}

output "alb" {
  value = module.alb
}


