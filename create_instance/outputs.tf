output "instances" {
  description = "Instances created"
  value = [
    oci_core_instance.tf_instance[*].display_name,
    oci_core_instance.tf_instance[*].public_ip
  ]
}

resource "local_file" "ansible_inventory" {
  filename = "terraform_inv.yml"
  content = templatefile("templates/ansible_inventory.tmpl",
    {
      instances_name = oci_core_instance.tf_instance[*].display_name
      instances_ip   = oci_core_instance.tf_instance[*].public_ip
    }
  )
}
