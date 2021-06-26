resource "oci_core_instance" "tf_instance" {
  count               = length(var.instance_hostname)
  availability_domain = data.oci_identity_availability_domain.avdom.name
  compartment_id      = var.compartment_id
  shape               = var.instance_shape
  display_name        = "${var.instance_hostname[count.index]}-${count.index}"

  create_vnic_details {
    hostname_label   = "${var.instance_hostname[count.index]}-${count.index}"
    assign_public_ip = true
    subnet_id        = var.subnet_id
    nsg_ids = var.secgroup_ocid
  }
  metadata = {
    "ssh_authorized_keys" : var.ssh_authorized_keys
  }
  source_details {
    source_id   = var.image_ocid
    source_type = "image"
  }
  provisioner "remote-exec" {
    connection {
      host        = self.public_ip
      type        = "ssh"
      user        = "opc"
      private_key = file(var.pvt_key)
    }
    inline = var.startup_commands
  }
}
