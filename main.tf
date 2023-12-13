module "components" {
source = "git::https://github.com/BhanuSaiReddy/tf-module-vpc.git"

for_each = var.vpc
cidr = each.value["cidr"]
  subnets = each.value["subnets"]
}