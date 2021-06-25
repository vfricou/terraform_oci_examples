// Provider variables
variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "region" {}
variable "private_key_path" {}

// Compartment configuration
variable "tf_compartment" {}

// VCN configuration
variable "cidr_block" {
  type = string
  default = "172.16.0.0/24"
}
variable "vcn_displayname" {
  type = string
  default = "Terraform - VCN"
}
variable "vcn_ipv6" {
  type = bool
  default = true
}
variable "vcn_dns" {
  type = string
  default = "tfopc"
}
variable "subnet_displayname" {
  type = string
  default = "Terraform - Subnet"
}
variable "subnet_dns" {
  type = string
  default = "opc"
}
