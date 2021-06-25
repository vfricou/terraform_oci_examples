resource "oci_core_route_table" "routing" {
  compartment_id = data.oci_identity_compartment.compartment.id
  vcn_id         = oci_core_vcn.vcn.id
  display_name   = "Terraform - Routing table to Internet Gateway"
  route_rules {
    network_entity_id = oci_core_internet_gateway.internet_gateway.id
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
  }
}

resource "oci_core_route_table_attachment" "route_attachment" {
  route_table_id = oci_core_route_table.routing.id
  subnet_id      = oci_core_subnet.subnet.id
}