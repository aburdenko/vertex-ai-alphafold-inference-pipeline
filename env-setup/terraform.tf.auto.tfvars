# Organization ID where GCP Resources need to get spin up for RAD Lab. It can be skipped if already setting folder_id
organization_id     =   "248493748915"

# Folder ID where the project should be created. It can be skipped if already setting organization_id. 
# Leave blank if the project should be created directly underneath the Organization node.
folder_id           =   "79162972935"

# Billing Account associated to the GCP Resources
billing_account_id  =   "019895-39E39E-6C9E2F"

# When using an existing project, this can be set to false if the required APIs are already enabled.
# Default is true to enable necessary APIs on the newly created GCP project for RAD Lab
enable_services = false

# When setting below variable to false to deploy module in existing GCP project. 
# Default is true i.e. to create a new PROJECT_ID.
create_project = false

# Prefix for the project ID, if creating new GCP project in RAD Lab deployment using above variable. 
# GCP Project ID of existing project, if using existing GCP project in RAD Lab deployment using above variable. 
project_id = "af2-demo"

# GCP Zone where all the GCP resources will be spun up. 
zone = "us-central1-a"

region = "us-central1"
# Name of the network to be created or if using the existing one.
network_name = "filestore-network"

# Name of the sub-network to be created or if using the existing one.
subnet_name = "sub-network-name"

# List of Users you would like to give access to the created Notebooks & GCS Bucket apart from the identity created the notebook.
trusted_users = ["user:aburdenko@kallogjeri.altostrat.com"]

workbench_instance_name = "aburdenko_af_notebook"

filestore_instance_id = "af-cache1"

gcs_bucket_name = "alphafold-dbs"

gcs_dbs_path = "gs://alphafold_fullblown_on_vertex_pipelines_v23"