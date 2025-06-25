variable "gcp_project_id" {
  description = "The GCP project ID to deploy the resources to."
  type        = string
}

variable "region" {
  description = "The GCP region to deploy the resources in."
  type        = string
  default     = "us-central1"
}

variable "alloydb_password" {
  description = "The password for the initial user of the AlloyDB cluster."
  type        = string
  sensitive   = true
}