data "aws_identitystore_groups" "identitystore_groups_lookup" {
  for_each = var.identitystore_groups_lookup

  identity_store_id = each.value.identity_store_id
  region            = each.value.region
}

