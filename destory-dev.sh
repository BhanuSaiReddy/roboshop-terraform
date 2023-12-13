#!/bin/bash

# Remove the .terraform directory
rm -rf .terraform

# Initialize Terraform with backend configuration
terraform init -backend-config=env-dev/state.tfvars

# Destroy Terraform resources using specific variable files
terraform destroy -auto-approve -var-file=env-dev/main.tfvars
