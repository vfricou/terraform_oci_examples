resource "oci_core_security_list" "seclist" {
  compartment_id = data.oci_identity_compartment.compartment.id
  vcn_id         = oci_core_vcn.vcn.id
  display_name   = "Terraform - Default Security List"

  egress_security_rules {
    destination      = "0.0.0.0/0"
    destination_type = "CIDR_BLOCK"
    protocol         = "all"
  }
  ingress_security_rules {
    protocol    = "1"
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    icmp_options {
      code = "4"
      type = "3"
    }
  }
  ingress_security_rules {
    protocol    = "58"
    source      = "::0/0"
    source_type = "CIDR_BLOCK"
    icmp_options {
      code = "4"
      type = "3"
    }
  }
  ingress_security_rules {
    protocol    = "6"
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    tcp_options {
      max = "22"
      min = "22"
    }
  }
  ingress_security_rules {
    protocol    = "6"
    source      = "::0/0"
    source_type = "CIDR_BLOCK"
    tcp_options {
      max = "22"
      min = "22"
    }
  }
}
