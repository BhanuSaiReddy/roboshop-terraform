#!/bin/bash

# Remove the existing .terraform directory (if any)
rm -rf .terraform

# Initialize Terraform with backend configuration from env-prod/state.tfvars
terraform init -backend-config=env-prod/state.tfvars

# Apply Terraform changes with auto-approval and variables from env-prod/main.tfvars
terraform apply -auto-approve -var-file=env-prod/main.tfvars
