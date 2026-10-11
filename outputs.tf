output "private_dns_resolver_forwarding_rules_id" {
  description = "Map of id values across all private_dns_resolver_forwarding_rules, keyed the same as var.private_dns_resolver_forwarding_rules"
  value       = { for k, v in azurerm_private_dns_resolver_forwarding_rule.private_dns_resolver_forwarding_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "private_dns_resolver_forwarding_rules_dns_forwarding_ruleset_id" {
  description = "Map of dns_forwarding_ruleset_id values across all private_dns_resolver_forwarding_rules, keyed the same as var.private_dns_resolver_forwarding_rules"
  value       = { for k, v in azurerm_private_dns_resolver_forwarding_rule.private_dns_resolver_forwarding_rules : k => v.dns_forwarding_ruleset_id if v.dns_forwarding_ruleset_id != null && length(v.dns_forwarding_ruleset_id) > 0 }
}
output "private_dns_resolver_forwarding_rules_domain_name" {
  description = "Map of domain_name values across all private_dns_resolver_forwarding_rules, keyed the same as var.private_dns_resolver_forwarding_rules"
  value       = { for k, v in azurerm_private_dns_resolver_forwarding_rule.private_dns_resolver_forwarding_rules : k => v.domain_name if v.domain_name != null && length(v.domain_name) > 0 }
}
output "private_dns_resolver_forwarding_rules_enabled" {
  description = "Map of enabled values across all private_dns_resolver_forwarding_rules, keyed the same as var.private_dns_resolver_forwarding_rules"
  value       = { for k, v in azurerm_private_dns_resolver_forwarding_rule.private_dns_resolver_forwarding_rules : k => v.enabled if v.enabled != null }
}
output "private_dns_resolver_forwarding_rules_metadata" {
  description = "Map of metadata values across all private_dns_resolver_forwarding_rules, keyed the same as var.private_dns_resolver_forwarding_rules"
  value       = { for k, v in azurerm_private_dns_resolver_forwarding_rule.private_dns_resolver_forwarding_rules : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "private_dns_resolver_forwarding_rules_name" {
  description = "Map of name values across all private_dns_resolver_forwarding_rules, keyed the same as var.private_dns_resolver_forwarding_rules"
  value       = { for k, v in azurerm_private_dns_resolver_forwarding_rule.private_dns_resolver_forwarding_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "private_dns_resolver_forwarding_rules_target_dns_servers" {
  description = "Map of target_dns_servers values across all private_dns_resolver_forwarding_rules, keyed the same as var.private_dns_resolver_forwarding_rules"
  value       = { for k, v in azurerm_private_dns_resolver_forwarding_rule.private_dns_resolver_forwarding_rules : k => v.target_dns_servers if v.target_dns_servers != null && length(v.target_dns_servers) > 0 }
}

