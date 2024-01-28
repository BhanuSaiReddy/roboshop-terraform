output "vpc" {
  value = data.aws_subnets.subnets.ids
}

#output "vpc" {
 # value = module.vpc
#}

resource "null_resource" "dev_resource" {
  provisioner "local-exec" {
    command = "echo -e '\\x1b[34mDEV SETUP COMPLETED SUCCESSFULLY\\x1b[0m'"
  }
}


