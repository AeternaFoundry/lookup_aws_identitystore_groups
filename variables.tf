variable "identitystore_groups_lookup" {
  description = <<EOT
Map of identitystore_groups_lookup, attributes below
Required:
    - identity_store_id
Optional:
    - region
EOT

  type = map(object({
    identity_store_id = string
    region            = optional(string)
  }))
}

