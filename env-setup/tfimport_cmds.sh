#tf import google_storage_bucket.artifact_repo alphafold-dbs
tf state rm google_storage_bucket.artifact_repo 
tf import google_storage_bucket.artifact_repo alphafold_fullblown_on_vertex_pipelines_v23
tf import google_service_account.pipelines_sa pipelines-sa@kallogjeri-project-345114.iam.gserviceaccount.com
tf import google_service_account.training_sa training-sa@kallogjeri-project-345114.iam.gserviceaccount.com
tf import google_compute_network.network projects/kallogjeri-project-345114/global/networks/filestore-network
tf import google_compute_subnetwork.subnetwork projects/kallogjeri-project-345114/regions/us-central1/subnetworks/filestore-network                                              
tf import google_compute_global_address.private_ip_alloc_service_networking projects/kallogjeri-project-345114/global/addresses/filestore-network-private-ip-alloc
tf import google_filestore_instance.filestore_instance projects/kallogjeri-project-345114/locations/us-central1-a/instances/af-cache1 


>nohup.out
nohup terraform apply -auto-approve &
