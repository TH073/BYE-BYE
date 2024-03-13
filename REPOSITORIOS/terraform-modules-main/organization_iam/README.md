Latest Version iam module: v1.0.0_organization_iam

# Terraform Module to create Custom Roles and assign Roles to Google Workspace Groups at organization level.

This Terraform module allows you to create custom roles and assign roles to groups at organization level. It's important to note that the groups must have already been created in your Google Workspace environment prior to assigning roles through this module. If the groups are not available in your workspace, the Terraform plan will fail when applied.

## Usage Example

Below is an example of how to use this module in a Terraform configuration file:

```
#tf_modules_tag = 1.0.0

groups = {
    "group_name" = {
        roles = [ "role/owner" ]
    }
    "group_name_2" = {
        roles = [
            "roles/billing.admin",
            "roles/resourcemanager.projectIamAdmin",
            "roles/serviceusage.serviceUsageAdmin",
            "roles/viewer"
        ]
    }
}

custom_roles = {
    "custom_role_name" = {
        title = "Custom Role Title"
        description = "Custom Role Description"
        permissions = [
            "permission1",
            "permission2",
            "permission3",
            "permission4",
            "permission5",
            "permission6"
        ]
    }
    "custom_role_name_2" = {
        title = "Custom Role 2 Title"
        description = "Custom Role 2 Description"
        permissions = [
            "permission1",
            "permission2",
            "permission3",
            "permission4"
        ]
    }


}