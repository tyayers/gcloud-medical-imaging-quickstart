# Google Cloud Medical Imaging Quickstart
This repository provides a quickstart for getting started with the Google Cloud Medical Imaging suite solution.

## Terraform Quickstart

Documentation for the Google Cloud Healthcare Terraform module can be found [here](https://registry.terraform.io/modules/terraform-google-modules/healthcare/google/latest).

First, open the `./tf/main.tf` file and replace *<PROJECT_ID>* with your own Google Cloud Project Id.

Then you can *create* and *destroy* the resources as shown below.

### Create
```sh
cd tf
terraform init
terraform plan
terraform apply
```

### Destroy
```ssh
terraform destroy
```

## Shell Quickstart

First open the `./sh/1.env.sh` file and ch