# Base configurations

Theses terraform configuration create required base configuration into your OCI compartment :

- VCN
- Subnet
- Internet Gateway
- Default routing table
- Default security list
- Default security group

You must create a `.tfvars` file containing required [variables](#variables).

## Usage

```shell
terraform init
terraform plan -var-file=variables.tfvars
terraform apply -var-file=variables.tfvars
```

## Variables
### Provider variables

All theses variables are required.  
You must declare this variables in your `.tfvars`.

| Variable         | Type   | Description          |
| ---------------- | ------ | -------------------- | 
| tenancy_ocid     | string | OCI tenant OCID      |
| user_ocid        | string | OCI user OCID        |
| fingerprint      | string | SSH key finger print |
| region           | string | OCI region           | 
| private_key_path | string | SSH private key path |

### Global variables

All theses variables are required.  
You must declare this variables in your `.tfvars`.

| Variables      | Type   | Description          |
| -------------- | ------ | -------------------- |
| tf_compartment | string | OCI compartment OCID |

### VCN Variables

You could overwrite theses variables in your `.tfvars`.

| Variables          | Type   | Default            | Description            |
| ------------------ | ------ | ------------------ | ---------------------- |
| cidr_block         | string | 172.16.0.0/24      | Subnet declaration     |
| vcn_displayname    | string | Terraform - VCN    | VCN display name       | 
| vcn_ipv6           | bool   | true               | Enable or disable IPv6 |
| vcn_dns            | string | tfopc              | VCN global DNS domain  |
| subnet_displayname | string | Terraform - Subnet | Subnet display name    |
| subnet_dns         | string | opc                | Subnet DNS domain      |
