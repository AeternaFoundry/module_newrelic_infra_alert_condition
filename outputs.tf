output "infra_alert_conditions_id" {
  description = "Map of id values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions except keys with no id are omitted"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "infra_alert_conditions_comparison" {
  description = "Map of comparison values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions except keys with no comparison are omitted"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.comparison if v.comparison != null && length(v.comparison) > 0 }
}
output "infra_alert_conditions_created_at" {
  description = "Map of created_at values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions except keys with no created_at are omitted"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.created_at if v.created_at != null }
}
output "infra_alert_conditions_critical" {
  description = "Map of critical values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions except keys with no critical are omitted"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => one(v.critical) if v.critical != null && length(v.critical) > 0 }
}
output "infra_alert_conditions_description" {
  description = "Map of description values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions except keys with no description are omitted"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.description if v.description != null && length(v.description) > 0 }
}
output "infra_alert_conditions_enabled" {
  description = "Map of enabled values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions except keys with no enabled are omitted"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.enabled if v.enabled != null }
}
output "infra_alert_conditions_entity_guid" {
  description = "Map of entity_guid values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions except keys with no entity_guid are omitted"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.entity_guid if v.entity_guid != null && length(v.entity_guid) > 0 }
}
output "infra_alert_conditions_event" {
  description = "Map of event values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions except keys with no event are omitted"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.event if v.event != null && length(v.event) > 0 }
}
output "infra_alert_conditions_integration_provider" {
  description = "Map of integration_provider values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions except keys with no integration_provider are omitted"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.integration_provider if v.integration_provider != null && length(v.integration_provider) > 0 }
}
output "infra_alert_conditions_name" {
  description = "Map of name values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions except keys with no name are omitted"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "infra_alert_conditions_policy_id" {
  description = "Map of policy_id values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions except keys with no policy_id are omitted"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.policy_id if v.policy_id != null }
}
output "infra_alert_conditions_process_where" {
  description = "Map of process_where values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions except keys with no process_where are omitted"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.process_where if v.process_where != null && length(v.process_where) > 0 }
}
output "infra_alert_conditions_runbook_url" {
  description = "Map of runbook_url values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions except keys with no runbook_url are omitted"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.runbook_url if v.runbook_url != null && length(v.runbook_url) > 0 }
}
output "infra_alert_conditions_select" {
  description = "Map of select values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions except keys with no select are omitted"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.select if v.select != null && length(v.select) > 0 }
}
output "infra_alert_conditions_type" {
  description = "Map of type values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions except keys with no type are omitted"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.type if v.type != null && length(v.type) > 0 }
}
output "infra_alert_conditions_updated_at" {
  description = "Map of updated_at values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions except keys with no updated_at are omitted"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.updated_at if v.updated_at != null }
}
output "infra_alert_conditions_violation_close_timer" {
  description = "Map of violation_close_timer values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions except keys with no violation_close_timer are omitted"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.violation_close_timer if v.violation_close_timer != null }
}
output "infra_alert_conditions_warning" {
  description = "Map of warning values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions except keys with no warning are omitted"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => one(v.warning) if v.warning != null && length(v.warning) > 0 }
}
output "infra_alert_conditions_where" {
  description = "Map of where values across all infra_alert_conditions, keyed the same as var.infra_alert_conditions except keys with no where are omitted"
  value       = { for k, v in newrelic_infra_alert_condition.infra_alert_conditions : k => v.where if v.where != null && length(v.where) > 0 }
}

