# Ten-Infra — Infrastructure-as-Code Repository

## 📘 Overview

**Ten-Infra** is an Infrastructure-as-Code (IaC) repository that provisions and manages AWS resources using **Terraform**.  
It follows a **modular architecture**, allowing reusable, environment-specific components for `dev`, `qa`, `uat`, and `prod`.

This repository supports:

- AWS infrastructure provisioning using Terraform modules  
- CI/CD automation via **GitHub Actions** (Plan, Apply, Destroy)  
- Secure state management with S3 + DynamoDB backend  

---

## 📂 Repository Structure

Ten-Infra-main/
├── *.tf # Root Terraform files (VPC, subnet, ALB, ECS, RDS, etc.)
├── *.tfvars # Environment-specific variables (dev, qa, prod)
├── modules/ # Reusable Terraform modules
└── .github/workflows # GitHub Actions CI/CD pipelines


---

## ⚙️ How to Use This Repository

### 1. Prerequisites

- AWS account with sufficient IAM permissions  
- Terraform CLI >= 1.5.0  
- GitHub OIDC role configured for GitHub Actions  
- S3 bucket and DynamoDB table for remote state management  

### 2. Adding New Resources Using Existing Modules

To create a new AWS resource using an **existing module**:

1. **Identify the module** that corresponds to your resource.  
   Example modules: `vpc/`, `subnet/`, `alb/`, `ecs_fargate/`, `rds/`, `s3/`.

2. **Create a new root-level Terraform file** if needed.  
   For example, to create a new RDS instance:

module "new_rds_instance" {
  source          = "./modules/rds"
  db_name         = "newdb"
  instance_class  = "db.t3.medium"
  subnet_ids      = module.vpc.private_subnets
  vpc_id          = module.vpc.vpc_id
  security_groups = [module.sg.rds_sg_id]
}

3 **Update the environment .tfvars file with new variable values (if applicable).**
Example dev.tfvars:

        db_name = "newdb"
        db_user = "admin"
        db_password = "SuperSecurePassword"

Run Terraform Plan via GitHub Actions

Create a Pull Request → triggers plan.yaml

Review the generated plan artifacts

Apply Changes

Merge PR to main → triggers apply.yaml

Resources are deployed to the target environment automatically

Optional Cleanup

Use destroy.yaml workflow to safely remove resources

| Workflow       | Trigger         | Purpose                                    |
| -------------- | --------------- | ------------------------------------------ |
| `plan.yaml`    | Pull Request    | Terraform plan for environment review      |
| `apply.yaml`   | Merge to main   | Terraform apply (auto or manual approval)  |
| `destroy.yaml` | Manual workflow | Terraform destroy for specific environment |

**🧩 Best Practices**

Reuse existing modules wherever possible instead of creating new modules.

Keep environment-specific variables in .tfvars files.

Follow Trunk-Based Development: short-lived feature branches → merge quickly via PR.

Review plan artifacts carefully before applying changes.

**🔐 Security & State Management**

Remote state stored in S3 with KMS encryption and versioning

Terraform state isolated per environment:
terraform/dev/terraform.tfstate
terraform/qa/terraform.tfstate
terraform/uat/terraform.tfstate
terraform/prod/terraform.tfstate

Secrets are managed via AWS Secrets Manager

GitHub Actions uses OIDC IAM roles — no long-lived credentials

**🚀 Quick Start**

Clone the repository:
git clone https://github.com/<org>/ten-infra.git
cd ten-infra
Create a feature branch for your resource changes:
git checkout -b feature/new-resource
Add or update Terraform code using modules.

**Commit and push changes:**
git add .
git commit -m "Add new RDS instance"
git push origin feature/new-resource
Open a Pull Request → GitHub Actions runs plan.yaml

Merge PR → apply.yaml deploys the resources automatically


