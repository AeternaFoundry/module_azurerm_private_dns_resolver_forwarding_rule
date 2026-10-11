variable "private_dns_resolver_forwarding_rules" {
  description = <<EOT
Map of private_dns_resolver_forwarding_rules, attributes below
Required:
    - dns_forwarding_ruleset_id
    - domain_name
    - name
    - target_dns_servers (block):
        - ip_address (required)
        - port (optional)
Optional:
    - enabled
    - metadata
EOT

  type = map(object({
    dns_forwarding_ruleset_id = string
    domain_name               = string
    name                      = string
    enabled                   = optional(bool)
    metadata                  = optional(map(string))
    target_dns_servers = list(object({
      ip_address = string
      port       = optional(number)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.private_dns_resolver_forwarding_rules : (
        length(v.target_dns_servers) >= 1
      )
    ])
    error_message = "Each target_dns_servers list must contain at least 1 items"
  }
}

