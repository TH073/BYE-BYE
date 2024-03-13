Latest Version cloudbuild module: v1.0.0_cloudbuild

This module has been created to setup the initial configurations in order for cloud build to work properly. 

Currently there is just one resource: the private worker pool.

Example:
_Note that most of these parameters can be ommited since they have the default value_
´´´
project="nbn23-terraform"
worker_pool="private-worker-pool"
location="europe-west1"
disk_size=100
machine_type="e2-standard-4"
no_external_ip=false 
´´´