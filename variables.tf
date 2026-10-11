variable "infra_alert_conditions" {
  description = <<EOT
Map of infra_alert_conditions, attributes below
Required:
    - name
    - policy_id
    - type
Optional:
    - comparison
    - description
    - enabled
    - event
    - integration_provider
    - process_where
    - runbook_url
    - select
    - violation_close_timer
    - where
    - critical (block):
        - duration (required)
        - time_function (optional)
        - value (optional)
    - warning (block):
        - duration (required)
        - time_function (optional)
        - value (optional)
EOT

  type = map(object({
    name                  = string
    policy_id             = number
    type                  = string
    comparison            = optional(string)
    description           = optional(string)
    enabled               = optional(bool)
    event                 = optional(string)
    integration_provider  = optional(string)
    process_where         = optional(string)
    runbook_url           = optional(string)
    select                = optional(string)
    violation_close_timer = optional(number)
    where                 = optional(string)
    critical = optional(object({
      duration      = number
      time_function = optional(string)
      value         = optional(number)
    }))
    warning = optional(object({
      duration      = number
      time_function = optional(string)
      value         = optional(number)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.infra_alert_conditions : (
        v.comparison == null || (contains([for v in ["above", "below", "equal"] : lower(v)], lower(v.comparison)))
      )
    ])
    error_message = "must be one of: \"above\", \"below\", \"equal\""
  }
  validation {
    condition = alltrue([
      for k, v in var.infra_alert_conditions : (
        v.critical == null || (v.critical.time_function == null || (contains([for v in ["any", "all"] : lower(v)], lower(v.critical.time_function))))
      )
    ])
    error_message = "must be one of: \"any\", \"all\""
  }
  validation {
    condition = alltrue([
      for k, v in var.infra_alert_conditions : (
        v.warning == null || (v.warning.time_function == null || (contains([for v in ["any", "all"] : lower(v)], lower(v.warning.time_function))))
      )
    ])
    error_message = "must be one of: \"any\", \"all\""
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

