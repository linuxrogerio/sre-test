resource "google_container_cluster" "gcp_kubernetes" {
    name = var.cluster_name
    initial_node_count = var.gcp_cluster_count

    master_auth {
        username = "var.linux_admin_username"
        password = "var.linux_admin_password"
    }

    node_config {
        oauth_scopes = [
            "https://www.googleapis.com/auth/logging.write",
            "https://www.googleapis.com/auth/monitoring",
        ]

        labels = {
            this-is-for = "dev-cluster"
        }

        tags = ["dev", "work"]

    }

}