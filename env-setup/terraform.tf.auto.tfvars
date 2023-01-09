
# Prefix for the project ID, if creating new GCP project in RAD Lab deployment using above variable. 
# GCP Project ID of existing project, if using existing GCP project in RAD Lab deployment using above variable. 
project_id = "kallogjeri-project-345114"

# GCP Zone where all the GCP resources will be spun up. 
zone = "us-central1-a"

region = "us-central1"

# Name of the network to be created or if using the existing one.
network_name = "filestore-network"

# Name of the sub-network to be created or if using the existing one.
subnet_name = "filestore-network"

workbench_instance_name = "aburdenko-af-notebook"

filestore_instance_id = "af-cache1"

gcs_bucket_name = "alphafold-dbs"

gcs_dbs_path = "gs://alphafold_fullblown_on_vertex_pipelines_v23"

#gcs_dbs_path = "gs://alphafold-dbs"

filestore_tier = "BASIC_SSD"

share_capacity = "3000"

