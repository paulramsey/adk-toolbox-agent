output "vpc_name" {
  description = "The name of the created VPC."
  value       = google_compute_network.demo_vpc.name
}

output "alloydb_cluster_name" {
  description = "The name of the AlloyDB cluster."
  value       = google_alloydb_cluster.default.name
}

output "cloud_sql_instance_connection_name" {
  description = "The connection name of the Cloud SQL PostgreSQL instance."
  value       = google_sql_database_instance.postgres.connection_name
}

output "spanner_instance_name" {
  description = "The name of the Spanner instance."
  value       = google_spanner_instance.default.name
}

output "colab_workbench_instance_name" {
  description = "The name of the Colab Enterprise Workbench instance."
  value       = google_workbench_instance.google_workbench.name
}

output "workbench_proxy_uri" {
  value = google_workbench_instance.google_workbench.proxy_uri
}