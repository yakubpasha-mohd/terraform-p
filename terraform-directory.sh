#!/usr/bin/env bash
set -euo pipefail

ROOT="terraform-project"

# create directories
mkdir -p "${ROOT}"/{global/{s3-backend,iam},environments/{dev,test,prod},modules/{vpc,ec2,iam},scripts}

# create environment files
touch "${ROOT}/environments/dev/"{main.tf,variables.tf,outputs.tf,provider.tf,terraform.tfvars}
touch "${ROOT}/environments/prod/"{main.tf,variables.tf,outputs.tf,provider.tf,terraform.tfvars}

# create global files
touch "${ROOT}/global/s3-backend/main.tf"
touch "${ROOT}/global/iam/main.tf"

# create module files
touch "${ROOT}/modules/vpc/"{main.tf,variables.tf,outputs.tf,README.md}
touch "${ROOT}/modules/ec2/"{main.tf,variables.tf,outputs.tf,README.md}
touch "${ROOT}/modules/iam/"{main.tf,variables.tf,outputs.tf,README.md}

# scripts
touch "${ROOT}/scripts/userdata.sh" "${ROOT}/scripts/cleanup.sh"
chmod +x "${ROOT}/scripts/userdata.sh" "${ROOT}/scripts/cleanup.sh"

# root-level files
touch "${ROOT}/"{versions.tf}

# done
echo "Structure created at ./${ROOT}"
