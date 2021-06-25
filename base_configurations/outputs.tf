output "subnet_id" {
  description = "OCID of default VCN subnet"
  value       = oci_core_subnet.subnet.id
}

output "secgroup_id" {
  description = "Security Group OCID"
  value       = oci_core_network_security_group.default_ngs.id
}