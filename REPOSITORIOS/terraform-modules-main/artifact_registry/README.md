Latest Version buckets module: v1.0.0_artifact_registry

Allows creating and managing artifact repositories in Artifact Registry. 

Example: 
```
#tf_modules_tag = 1.0.0

project = "nbn23-competition-manager"

repositories = {
    "npm" = {
        description = "Repository for node images storage."
        format = "DOCKER"
    }
}