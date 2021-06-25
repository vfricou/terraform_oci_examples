resource "oci_core_network_security_group" "default_ngs" {
  compartment_id = data.oci_identity_compartment.compartment.id
  vcn_id         = oci_core_vcn.vcn.id
  display_name   = "Terraform - Base security group"
}

resource "oci_core_network_security_group_security_rule" "default_ingress_ngs_rules_icmp_drop" {
  description               = "Terraform - Block all ICMP request fragmented packets"
  direction                 = "INGRESS"
  network_security_group_id = oci_core_network_security_group.default_ngs.id
  protocol                  = "1"
  source_type               = "CIDR_BLOCK"
  source                    = "0.0.0.0/0"
  icmp_options {
    type = 3
    code = 4
  }
}

resource "oci_core_network_security_group_security_rule" "default_ingress_ngs_rules_icmp_allow" {
  description               = "Terraform - Allow ICMP request for VCN Subnet"
  direction                 = "INGRESS"
  network_security_group_id = oci_core_network_security_group.default_ngs.id
  protocol                  = "1"
  source_type               = "CIDR_BLOCK"
  source                    = oci_core_subnet.subnet.cidr_block
  icmp_options {
    type = 3
  }
}

resource "oci_core_network_security_group_security_rule" "default_ingress_ngs_rules_ssh_allow" {
  description               = "Terraform - Allow SSH access"
  direction                 = "INGRESS"
  network_security_group_id = oci_core_network_security_group.default_ngs.id
  protocol                  = "6"
  source_type               = "CIDR_BLOCK"
  source                    = "0.0.0.0/0"
  tcp_options {
    destination_port_range {
      max = 22
      min = 22
    }
  }
}

resource "oci_core_network_security_group_security_rule" "default_egress_ngs_rules_ssh_allow" {
  description               = "Terraform - Allow ICMP request for VCN Subnet"
  direction                 = "EGRESS"
  network_security_group_id = oci_core_network_security_group.default_ngs.id
  protocol                  = "all"
  destination_type          = "CIDR_BLOCK"
  destination               = "0.0.0.0/0"
}