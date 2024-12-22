module "bigquery" {
    source = "./modules/bigquery/"
    project_id = var.project_id
    region = var.region
}