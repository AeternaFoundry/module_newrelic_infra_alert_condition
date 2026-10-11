resource "newrelic_infra_alert_condition" "infra_alert_conditions" {
  for_each = var.infra_alert_conditions

  name                  = each.value.name
  policy_id             = each.value.policy_id
  type                  = each.value.type
  comparison            = each.value.comparison
  description           = each.value.description
  enabled               = each.value.enabled
  event                 = each.value.event
  integration_provider  = each.value.integration_provider
  process_where         = each.value.process_where
  runbook_url           = each.value.runbook_url
  select                = each.value.select
  violation_close_timer = each.value.violation_close_timer
  where                 = each.value.where

  dynamic "critical" {
    for_each = each.value.critical != null ? [each.value.critical] : []
    content {
      duration      = critical.value.duration
      time_function = critical.value.time_function
      value         = critical.value.value
    }
  }

  dynamic "warning" {
    for_each = each.value.warning != null ? [each.value.warning] : []
    content {
      duration      = warning.value.duration
      time_function = warning.value.time_function
      value         = warning.value.value
    }
  }
}

