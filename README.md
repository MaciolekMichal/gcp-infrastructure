# Overview
This repository contains the infrastructure-as-code (IaC) configuration and deployment pipeline for provisioning and managing Google Cloud Platform (GCP) resources using Terraform and Cloud Build. The project is designed to streamline the creation of GCP environments and enable efficient infrastructure management across different stages, such as testing and production.

Key Features:
* Terraform-based IaC: Modularized Terraform code to define GCP resources, making the infrastructure reusable and scalable.
* Automated Deployments: Integration with Cloud Build to enable Continuous Deployment (CD) of infrastructure changes.
* Environment Support: Configurations for multiple environments (test, prod) using separate variable files.
* Resource Modules: Predefined Terraform modules for common GCP resources:
    * BigQuery: Manages BigQuery datasets and tables.
    * IAM: Configures Identity and Access Management roles and policies.
* State Management: Remote backend setup for Terraform state to ensure consistency and collaboration.

<br>

# Setup Steps

### 1. Setup Cloud Build + Bitbucket/Github

### 2. Create GCS bucket for Terraform state
```bash
gcloud storage buckets create gs://terraform-state-9d828da2-b8a1-4496-9a57-1daff278d2c6 \
    --location europe-west1
```