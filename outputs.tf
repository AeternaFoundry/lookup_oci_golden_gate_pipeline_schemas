output "golden_gate_pipeline_schemas_lookup_id" {
  description = "Map of id values across all golden_gate_pipeline_schemas_lookup, keyed the same as var.golden_gate_pipeline_schemas_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_golden_gate_pipeline_schemas.golden_gate_pipeline_schemas_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "golden_gate_pipeline_schemas_lookup_display_name" {
  description = "Map of display_name values across all golden_gate_pipeline_schemas_lookup, keyed the same as var.golden_gate_pipeline_schemas_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_golden_gate_pipeline_schemas.golden_gate_pipeline_schemas_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "golden_gate_pipeline_schemas_lookup_filter" {
  description = "Map of filter values across all golden_gate_pipeline_schemas_lookup, keyed the same as var.golden_gate_pipeline_schemas_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_golden_gate_pipeline_schemas.golden_gate_pipeline_schemas_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "golden_gate_pipeline_schemas_lookup_pipeline_id" {
  description = "Map of pipeline_id values across all golden_gate_pipeline_schemas_lookup, keyed the same as var.golden_gate_pipeline_schemas_lookup except keys with no pipeline_id are omitted"
  value       = { for k, v in data.oci_golden_gate_pipeline_schemas.golden_gate_pipeline_schemas_lookup : k => v.pipeline_id if v.pipeline_id != null && length(v.pipeline_id) > 0 }
}
output "golden_gate_pipeline_schemas_lookup_pipeline_schema_collection" {
  description = "Map of pipeline_schema_collection values across all golden_gate_pipeline_schemas_lookup, keyed the same as var.golden_gate_pipeline_schemas_lookup except keys with no pipeline_schema_collection are omitted"
  value       = { for k, v in data.oci_golden_gate_pipeline_schemas.golden_gate_pipeline_schemas_lookup : k => v.pipeline_schema_collection if v.pipeline_schema_collection != null && length(v.pipeline_schema_collection) > 0 }
}

