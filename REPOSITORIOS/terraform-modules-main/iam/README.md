Latest Version iam module: v1.0.1_iam

# Terraform Module for Assigning Roles to Google Workspace Groups

This Terraform module allows you to assign roles to groups inside a project. It's important to note that the groups must have already been created in your Google Workspace environment prior to using this module. If the groups are not available in your workspace, the Terraform plan will fail when applied.

## Usage Example

Below is an example of how to use this module in a Terraform configuration file:

```
#tf_modules_tag = 1.0.1
project = "nbn23-competition-manager-dev"

groups = {
    "group_name" = {  # the group domain is added later in the module
     roles = [ 
        "roles/viewer"
      ]
     }
}
