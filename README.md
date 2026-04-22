# terraform-gcp-base

Start by setting the corresponding values in bootstrap/state/terraform.tfvars. We will use a dedicated project to store the state bucket. That dedicated project must be created before running this bootstrap and the billing acoount for that project must be set. Then use the bootstrap/state config as usual (terraform init/plan/apply) to create the bucket which will be used as remote backend for the terraform state of all environments. The name of the bucket is displayed as output variable.

You must update all the backend.tf files accross the entire repo with the name of the bucket.

Also, copy the bootstrap/org/backend.tf to bootstrap/state/, adjust the "prefix" in the new file to be "state" and run this to migrate the backend 

cd bootstrap/state
terraform init 

It will ask if you want to copy the existing state to the new backend. Answer "yes".

Then you can delete the local state files:

rm terraform.tfstate*

Now you can update the values in boostrap/org/terraform.tfvars and create the new project resource by running the bootstrap/org terraform config as usual. This will be the project were all the resources will be created.

Once the project is created, make sure the values for project_id, region and zone are correct in all terraform.tfvars files accross the entire repo. After that you can use the rest of terraform config as usual to create the infrastructure.
