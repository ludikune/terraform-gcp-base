variable "organization_id" {
  description = "Organization ID where the folders will be created"
  type        = string
}

variable "region" {
  description = "Default region"
  type        = string
}

variable "zone" {
  description = "Default zone"
  type        = string
}

variable "project_prefix" {
  description = "Project ID prefix"
  type        = string
}
