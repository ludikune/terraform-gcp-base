# terraform-gcp-base

Start by setting the corresponding values in bootstrap/terraform.tfvars. Then use the bootstrap config as usual (terraform init/plan/apply) to create the bucket which will be used as remote backend for the terraform state of all environments.

Then make sure the values for project_id, region and zone values are correct in all terraform.tfvars files accross the entire repo. After that you can use the rest of terraform config as usual to create the infrastructure. 
