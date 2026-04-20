# terraform-gcp-base

Start by setting the corresponding values in bootstrap/state/terraform.tfvars. We will use a dedicated project to store the state bucket. That dedicated project must be created before running this bootstrap. Then use the bootstrap/state config as usual (terraform init/plan/apply) to create the bucket which will be used as remote backend for the terraform state of all environments.
 

You must update all the backend.tf files and make sure the values for project_id, region and zone are correct in all terraform.tfvars files accross the entire repo. After that you can use the rest of terraform config as usual to create the infrastructure.

NEXT:
- Initialize using this instructions (I created the Shared Resources project to store the state bucket)
- Add instructions here to move the state of the bootstrap/state to the bucket (terraform init --migrate...)
- Create a new project and deploy a cloud run instance there (see tutorial for cloud run quickstart)
