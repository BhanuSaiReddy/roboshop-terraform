output "vpc" {
  value = data.aws_subnets.subnets.ids
}

#output "vpc" {
 # value = module.vpc
#}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo 'Dev Setup completed successfully.'"
  }
}
