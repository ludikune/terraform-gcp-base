# Create the folders and projects structure.
# In order to create the folders, this code requires the current project to have the "Cloud Resource Manager API"
# service enabled and the user must be part of the same Google Workspace / Cloud Identity domain
# as the organization.

# resource "google_folder" "shared-infrastructure" {
#   display_name = "Shared infrastructure"
#   parent       = "organizations/${var.organization_id}"
# }
# 
# resource "google_folder" "dev-env" {
#   display_name = "Development environment"
#   parent       = "organizations/${var.organization_id}"
# }
# 
# resource "google_folder" "prod-env" {
#   display_name = "Production environment"
#   parent       = "organizations/${var.organization_id}"
# }
# 
# resource "google_project" "my_project-in-a-folder" {
#   name       = "My Project"
#   project_id = "your-project-id"
#   folder_id  = google_folder.dev-env.name
# }

# When using a @gmail.com account, the project must be created under
# an existing organization node or under "No organization".


# resource "google_project" "my_project" {
#   name       = "My Project"
#   project_id = "your-project-id"
#   org_id     = "${var.organization_id}"
# }

resource "google_project" "my_beauty_project" {
  name       = "My Beauty Project"
  project_id = "your-project-id-${var.organization_id}"
}


