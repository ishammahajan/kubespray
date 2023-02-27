output "router_id" {
  value = "%{if var.use_neutron == 1} ${var.router_id == null ? element(concat(openstack_networking_router_v2.k8s.*.id, [""]), 0) : var.router_id} %{else} %{endif}"
}

output "network_id" {
  value = "%{if var.use_existing_network == true}${element(concat(data.openstack_networking_network_v2.k8s.*.id, [""]), 0)}%{else}${element(concat(openstack_networking_network_v2.k8s.*.id, [""]), 0)}%{endif}"
}

output "router_internal_port_id" {
  value = element(concat(openstack_networking_router_interface_v2.k8s.*.id, [""]), 0)
}

output "subnet_id" {
  value = element(concat(openstack_networking_subnet_v2.k8s.*.id, [""]), 0)
}
