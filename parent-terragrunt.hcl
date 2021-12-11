# Remote backend settings for all child directories
remote_state {
  backend = "azurerm"
  config = {
    resource_group_name  = "cal-472-74"
    storage_account_name = "sacalabscal47274"
    container_name       = "calab" 
    key            = "${path_relative_to_include()}/terraform.tfstate"
  }
}
The remote_state block contains the remote state configuration settings for storing the Terraform state in a Storage Account. The value of the key argument contains 
${path_relative_to_include()} which is another Terragrunt built-in function. This function includes the relative folder path where the Terraform configuration is located, 
which you will see later.  The ${path_relative_to_include()} function allows the key path 
to be automated for each directory.
        --  terrgrant.hcl in prod directory 
      Include all settings from the root terragrunt.hcl file
include {
  path = find_in_parent_folders()
}
The include block tells Terragrunt to use the configuration from the directory specified in the path argument. In this case, the path argument contains the value of another 
Terragrunt built-in function, find_in_parent_folders(). This function tells Terragrunt to use the terragrunt.hcl file in the parent folder. So Terragrunt will use the remote state 
configuration settings from the terragrunt.hcl in the parent folder as if it were copied and pasted into the current directory in the Prod folder.
  
