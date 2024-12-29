locals {
    organizationdata = jsondecode(file("./data.json"))
    root = local.organizationdata.root
    level0_accounts = [for accounts in local.root.accounts : accounts]
}

output "level0_accounts" {
  value = local.level0_accounts
}

# output "ids" {
#     value = [for v in values(local.data): v.id if can(v.id)]
# }