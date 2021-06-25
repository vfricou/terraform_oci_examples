resource "oci_core_vcn" "vcn" {
  cidr_block     = var.cidr_block
  compartment_id = data.oci_identity_compartment.compartment.id
  display_name   = var.vcn_displayname
  is_ipv6enabled = var.vcn_ipv6
  dns_label      = var.vcn_dns
}

resource "oci_core_subnet" "subnet" {
  cidr_block     = var.cidr_block
  compartment_id = data.oci_identity_compartment.compartment.id
  vcn_id         = oci_core_vcn.vcn.id
  display_name   = var.subnet_displayname
  dns_label      = var.subnet_dns
  route_table_id = oci_core_route_table.routing.id
}
