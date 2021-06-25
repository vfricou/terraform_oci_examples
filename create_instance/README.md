# Create instance

## Provider variables

| Variable         | Type   | Description          |
| ---------------- | ------ | -------------------- | 
| tenancy_ocid     | string | OCI tenant OCID      |
| user_ocid        | string | OCI user OCID        |
| fingerprint      | string | SSH key finger print |
| region           | string | OCI region           | 
| private_key_path | string | SSH private key path |

## Global variables

| Variables           | Type   |                                            |
| ------------------- | ------ | ------------------------------------------ |
| availability_domain | string | Availability domain OCID                   |
| compartment_id      | string | Compartment OCID                           |
| subnet_id           | string | Subnet OCID (given by base_configurations) |

## Instance variables

| Variables           | Type   | Default                                                                                     | Description                                                                          |
| ------------------- | ------ | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------ |
| secgroup_ocid       | string |                                                                                             | Security group OCID (given by base_configurations)                                   |
| image_ocid          | string | ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaetk6rhbl6vboxunvwixzk7hkhv7h2eb5hqsi55k6rwkpasglevga | Image OCID, default correspond to CentOS 7                                           |
| instance_shape      | string | VM.Standard.E2.1.Micro                                                                      | Instance shape definition                                                            |
| instance_hostname   | string |                                                                                             | Instance hostname (must be array — ex : `["tf-centos7"]` and could be multiple)      |
| ssh_authorized_keys | string |                                                                                             | SSH public authorized keys                                                           |
| pvt_key             | string |                                                                                             | SSH private key corresponding to `ssh_authorized_keys` to execute command at startup |

Images OCID could be found [here](https://docs.oracle.com/en-us/iaas/images/)
