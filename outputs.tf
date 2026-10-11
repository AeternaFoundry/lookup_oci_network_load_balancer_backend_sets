output "network_load_balancer_backend_sets_lookup_id" {
  description = "Map of id values across all network_load_balancer_backend_sets_lookup, keyed the same as var.network_load_balancer_backend_sets_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_network_load_balancer_backend_sets.network_load_balancer_backend_sets_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_load_balancer_backend_sets_lookup_backend_set_collection" {
  description = "Map of backend_set_collection values across all network_load_balancer_backend_sets_lookup, keyed the same as var.network_load_balancer_backend_sets_lookup except keys with no backend_set_collection are omitted"
  value       = { for k, v in data.oci_network_load_balancer_backend_sets.network_load_balancer_backend_sets_lookup : k => v.backend_set_collection if v.backend_set_collection != null && length(v.backend_set_collection) > 0 }
}
output "network_load_balancer_backend_sets_lookup_filter" {
  description = "Map of filter values across all network_load_balancer_backend_sets_lookup, keyed the same as var.network_load_balancer_backend_sets_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_network_load_balancer_backend_sets.network_load_balancer_backend_sets_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "network_load_balancer_backend_sets_lookup_network_load_balancer_id" {
  description = "Map of network_load_balancer_id values across all network_load_balancer_backend_sets_lookup, keyed the same as var.network_load_balancer_backend_sets_lookup except keys with no network_load_balancer_id are omitted"
  value       = { for k, v in data.oci_network_load_balancer_backend_sets.network_load_balancer_backend_sets_lookup : k => v.network_load_balancer_id if v.network_load_balancer_id != null && length(v.network_load_balancer_id) > 0 }
}

