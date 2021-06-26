output "compartment_list" {
  description = "Compartment list"
  value = [
    data.oci_identity_compartments.compartments_list.compartments[*].id,
    data.oci_identity_compartments.compartments_list.compartments[*].name,
  ]
}
