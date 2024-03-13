Latest Version project module: v1.0.0_project

This module serves the purpose of creating a new project. 

In addition to project creation, it includes the addition of the tf-operator service account with the roles needed. 

This step is crucial as the tf-operator is responsible for deploying the rest of the infrastructure within the project.

Example:

```name = "nbn23-terraform"
id = "nbn23-terraform"
organization_id = "104238922361"
tf_operator_roles = [
    "roles/storage.admin"
]```