dev:
    rm -rf .terraform
    terraform init -backend-config=env-dev/state.tfvars
    terraform apply -auto-approve -var-file=env-dev/main.vars

dev:
    rm -rf .terraform
    terraform init -backend-config=env-dev/state.tfvars
    terraform apply -auto-approve -var-file=env-dev/main.vars
