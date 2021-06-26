# List active compartments

This terraform plan simply list compartments OCID from your tenant.  

You must create a `.tfvars` file containing required [variables](#variables).

## Usage

```shell
terraform init
terraform plan -var-file=variables.tfvars
```

## Variables

All following variables are required.

| Variable         | Type   | Description          |
| ---------------- | ------ | -------------------- | 
| tenancy_ocid     | string | OCI tenant OCID      |
| user_ocid        | string | OCI user OCID        |
| fingerprint      | string | SSH key finger print |
| region           | string | OCI region           | 
| private_key_path | string | SSH private key path |
