output "vpc" {
  value = data.aws_subnets.subnets.ids
}



output "alb" {
  value = lookup(lookup(lookup(module.alb,"private", null), "dns_name",null)
}


