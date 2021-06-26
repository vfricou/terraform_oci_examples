// Provider variables
variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "region" {}
variable "private_key_path" {}

// Instance variables
variable "availability_domain" {}
variable "compartment_id" {}
variable "subnet_id" {}
variable "secgroup_ocid" {}
variable "image_ocid" {
  type = string
  default = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaetk6rhbl6vboxunvwixzk7hkhv7h2eb5hqsi55k6rwkpasglevga"
  description = "CentOS 7 image OCID"
}
variable "instance_shape" {
  type = string
  default = "VM.Standard.E2.1.Micro"
}
variable "instance_hostname" {}
variable "ssh_authorized_keys" {}
variable "pvt_key" {}
variable "startup_commands" {
  type = list(string)
  default = ["echo 'Correctly connected'"]
}



