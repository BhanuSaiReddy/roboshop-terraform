#!/bin/bash

# Remove the existing .terraform directory (if any)
rm -rf .terraform

# Initialize Terraform with backend configuration from env-dev/state.tfvars
terraform init -backend-config=env-dev/state.tfvars

# Apply Terraform changes with auto-approval and variables from env-dev/main.tfvars
terraform apply -auto-approve -var-file=env-dev/main.tfvars
