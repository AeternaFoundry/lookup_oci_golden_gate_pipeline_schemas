variable "golden_gate_pipeline_schemas_lookup" {
  description = <<EOT
Map of golden_gate_pipeline_schemas_lookup, attributes below
Required:
    - pipeline_id
Optional:
    - display_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    pipeline_id  = string
    display_name = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

