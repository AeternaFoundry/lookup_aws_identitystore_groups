output "identitystore_groups_lookup_groups" {
  description = "Map of groups values across all identitystore_groups_lookup, keyed the same as var.identitystore_groups_lookup"
  value       = { for k, v in data.aws_identitystore_groups.identitystore_groups_lookup : k => v.groups if v.groups != null && length(v.groups) > 0 }
}
output "identitystore_groups_lookup_identity_store_id" {
  description = "Map of identity_store_id values across all identitystore_groups_lookup, keyed the same as var.identitystore_groups_lookup"
  value       = { for k, v in data.aws_identitystore_groups.identitystore_groups_lookup : k => v.identity_store_id if v.identity_store_id != null && length(v.identity_store_id) > 0 }
}
output "identitystore_groups_lookup_region" {
  description = "Map of region values across all identitystore_groups_lookup, keyed the same as var.identitystore_groups_lookup"
  value       = { for k, v in data.aws_identitystore_groups.identitystore_groups_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

