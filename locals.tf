#locals {
  #vpc_id      = lookup(lookup(module.vpc, "main", null), "vpc_id", null)
  #app_subnets = [for k, v in lookup(lookup(lookup(lookup(module.vpc, "main", null),"subnets",null), "app", null),"subnet_ids", null): v.id]
  #}

locals {
  vpc_id = coalesce(lookup(lookup(module.vpc, "main", {}), "vpc_id", null), "")

  app_subnets = [
    for k, v in coalesce(lookup(lookup(lookup(lookup(module.vpc, "main", {}), "subnets", {}), "app", {}), "subnet_ids", null), []): v.id
  ]
}
