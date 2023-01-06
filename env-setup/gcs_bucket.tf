# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# data "storage_bucket" "artifact_repo" {
#     bucket = "alphafold-dbs"
# }

resource "google_storage_bucket" "artifact_repo" {   
#    count                       = "${length(data.storage_bucket.artifact_repo.bucket) == 0 ? 1 : 0}" 
    name                        = var.gcs_bucket_name    
    location                    = var.region
    storage_class               = "REGIONAL"
    force_destroy               = var.force_destroy
    uniform_bucket_level_access = var.uniform_bucket_access    

    lifecycle {
        // allow deploy processes to set other tags without generating a diff
        ignore_changes = all
    }      
}

