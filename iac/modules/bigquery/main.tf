provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_bigquery_dataset" "my_dataset" {
  dataset_id = "my_dataset"
  location   = "EU"
}

resource "google_bigquery_table" "my_table" {
  dataset_id          = google_bigquery_dataset.my_dataset.dataset_id
  table_id            = "my_table"
  deletion_protection = false
  schema              = <<EOF
        [
            {"name": "id", "type": "INT64"},
            {"name": "name", "type": "STRING"},
            {"name": "born_at", "type": "DATE"}
        ]
    EOF
}