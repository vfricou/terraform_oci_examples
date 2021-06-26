# Create instance

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

| Variables           | Type   |                                            |
| ------------------- | ------ | ------------------------------------------ |
| availability_domain | string | Availability domain OCID                   |
| compartment_id      | string | Compartment OCID                           |
| subnet_id           | string | Subnet OCID (given by base_configurations) |

### Instance variables

Only variables without default values are required.  
You must declare this variables in your `.tfvars`.

| Variables           | Type   | Default                                                                                     | Description                                                                          |
| ------------------- | ------ | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------ |
| secgroup_ocid       | string |                                                                                             | Security group OCID (given by base_configurations)                                   |
| image_ocid          | string | ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaetk6rhbl6vboxunvwixzk7hkhv7h2eb5hqsi55k6rwkpasglevga | Image OCID, default correspond to CentOS 7                                           |
| instance_shape      | string | VM.Standard.E2.1.Micro                                                                      | Instance shape definition                                                            |
| instance_hostname   | string |                                                                                             | Instance hostname (must be array — ex : `["tf-centos7"]` and could be multiple)      |
| ssh_authorized_keys | string |                                                                                             | SSH public authorized keys                                                           |
| pvt_key             | string |                                                                                             | SSH private key corresponding to `ssh_authorized_keys` to execute command at startup |

Images OCID could be found [here](https://docs.oracle.com/en-us/iaas/images/)
