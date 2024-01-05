output "vpc" {
  value = data.aws_subnets.subnets.ids
}

#output "vpc" {
 # value = module.vpc
#}