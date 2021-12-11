terragrunt destroy-all

Terragrunt will only apply the Terraform configurations in child folders that contain a 
terragrunt.hcl file. 

directory structure 
dev
 main.tf 
 tergrunt.hcl
prod main.tf 
 tergrunt.hcl
qa main.tf 
 tergrunt.hcl
