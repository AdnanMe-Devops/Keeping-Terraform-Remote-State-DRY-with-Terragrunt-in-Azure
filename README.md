# Keeping-Terraform-Remote-State-DRY-with-Terragrunt-in-Azure
Keeping Terraform Remote State DRY with Terragrunt in Azure
Terragrunt is a thin wrapper around Terraform that provides additional tools for keeping configurations DRY. DRY is a popular software development practice that stands for "Don't 
Repeat Yourself," which means don't reuse the same software pattern, avoiding redundancy. Terragrunt enables developers to use DRY principles when configuring remote state. For 
information on how to install Terragrunt will use Terragrunt to deploy a Terraform configuration in separate environments while keeping the remote state configuration DRY.

Each directory represents three separate environments Dev, Prod, and QA. The main.tf files contain the configuration for deploying a Virtual Network and Subnet in each 
environment. The terragrunt.hcl files contain the configuration for Terragrunt and are required to exist in order to use the tool.  there is a terragrunt.hcl file at the root of the directory. This file will contain the remote state configuration settings which will be used in each subfolder. The remote state configurations will only be specified once at the root level and used throughout the sub folders, staying true to DRY principles.
 
