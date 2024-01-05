locals {
  vpc_id = lookup(lookup(module.vpc, "main", null), "vpc_id", null)
  app_subnets = [
    for k, v in lookup(lookup(lookup(lookup(module.vpc, "main", ), "subnets"), "app"), "subnet_ids", ) :
    v.id
  ]
}