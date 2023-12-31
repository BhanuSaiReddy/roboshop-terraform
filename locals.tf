locals {
  vpc_id = lookup(lookup(module.vpc, "main" , null), "vpc_id" , null)
  app_subnets = [for k,v in lookup(lookup(lookup(lookup(module.vpc,"main", null),"subnets",null ),"app",null),"subnets_ids" , null): v.id]
  db_subnets = [for k,v in lookup(lookup(lookup(lookup(module.vpc,"main", null),"subnets",null ),"db",null),"subnets_ids" , null): v.id]
}