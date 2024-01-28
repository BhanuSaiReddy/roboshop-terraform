output "vpc" {
  value = data.aws_subnets.subnets.ids
}

#output "vpc" {
 # value = module.vpc
#}

resource "null_resource" "Dev_resource" {
  provisioner "local-exec" {
    command = "echo 'DEV SETUP COMPLETED SUCCESSFULLY'"
  }
}
