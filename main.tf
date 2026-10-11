data "oci_golden_gate_pipeline_schemas" "golden_gate_pipeline_schemas_lookup" {
  for_each = var.golden_gate_pipeline_schemas_lookup

  pipeline_id  = each.value.pipeline_id
  display_name = each.value.display_name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

