output "infra_alert_conditions_id" {
  description = "Map of id values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.id }
}
output "infra_alert_conditions_comparison" {
  description = "Map of comparison values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.comparison }
}
output "infra_alert_conditions_created_at" {
  description = "Map of created_at values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.created_at }
}
output "infra_alert_conditions_critical" {
  description = "Map of critical values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => one(v.critical) }
}
output "infra_alert_conditions_description" {
  description = "Map of description values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.description }
}
output "infra_alert_conditions_enabled" {
  description = "Map of enabled values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.enabled }
}
output "infra_alert_conditions_entity_guid" {
  description = "Map of entity_guid values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.entity_guid }
}
output "infra_alert_conditions_event" {
  description = "Map of event values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.event }
}
output "infra_alert_conditions_integration_provider" {
  description = "Map of integration_provider values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.integration_provider }
}
output "infra_alert_conditions_name" {
  description = "Map of name values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.name }
}
output "infra_alert_conditions_policy_id" {
  description = "Map of policy_id values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.policy_id }
}
output "infra_alert_conditions_process_where" {
  description = "Map of process_where values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.process_where }
}
output "infra_alert_conditions_runbook_url" {
  description = "Map of runbook_url values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.runbook_url }
}
output "infra_alert_conditions_select" {
  description = "Map of select values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.select }
}
output "infra_alert_conditions_type" {
  description = "Map of type values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.type }
}
output "infra_alert_conditions_updated_at" {
  description = "Map of updated_at values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.updated_at }
}
output "infra_alert_conditions_violation_close_timer" {
  description = "Map of violation_close_timer values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.violation_close_timer }
}
output "infra_alert_conditions_warning" {
  description = "Map of warning values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => one(v.warning) }
}
output "infra_alert_conditions_where" {
  description = "Map of where values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.where }
}

