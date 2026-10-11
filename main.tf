data "oci_network_load_balancer_backend_sets" "network_load_balancer_backend_sets_lookup" {
  for_each = var.network_load_balancer_backend_sets_lookup

  network_load_balancer_id = each.value.network_load_balancer_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

