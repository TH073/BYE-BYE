# Terraform Module Repository

This repository is dedicated to the creation of generic Terraform modules. These modules are designed to be reusable and versatile, allowing you to efficiently provision and manage resources in your cloud infrastructure.

## Repository Standards

To maintain consistency and ease of use, please adhere to the following standards when contributing to this repository:

1. **Variables.tf File Order**: Ensure that the `variables.tf` files within the modules are alphabetically ordered. This helps in readability and maintainability.

2. **File Structure**: Instead of having a single `main.tf` file, we encourage segregating the configuration into multiple `.tf` files. This approach promotes modularity and better organization of Terraform code.

3. **Variable Naming Conventions**: Use underscores (`_`) in variable names to represent spaces and hyphens (`-`) to separate different concepts within variable names. This convention enhances code clarity and consistency.

## Branch Naming Conventions

When creating branches for this repository, please use the following naming conventions:

- **Fix Branches**: If you're making modifications or improvements to existing modules, create branches named `fix/<your-branch-name>_<version>`. This helps distinguish branches focused on fixing issues or enhancing existing functionality.

- **Feature Branches**: To create new modules or add significant features, use branches named `feature/<your-branch-name>_<version>`. Feature branches are for expanding the capabilities of the repository.

## Branch Management

When pushing new branches or merging them into the main repository, please ensure that a squash is performed. Squashing commits helps maintain a clean and organized commit history, making it easier to review and understand the changes introduced by a branch.

By following these standards, conventions, and the squash requirement, we can maintain a clean and organized repository for Terraform modules that are easy to use and contribute to. Thank you for your contributions!

## Tag Naming Convention

In order to apply new modules or new versions of these modules in Terraform, it is essential to follow a specific tag naming convention. This convention ensures proper integration with our Terraform CI/CD pipeline developed in CloudBuild. The tag format to be used is as follows:

#### vX.X.X_module-name


Where:
- `X.X.X` represents numbers following the standard versioning convention (major version, minor version, fixes).
- `module-name` must exactly match the name of the folder containing the `.tf` files for the module. Importantly, the module name should not contain underscores.

Additionally, it's crucial to maintain consistency by naming the development branch for the module as follows:


Failure to adhere to this naming convention may result in issues when deploying new modules or versions using Terraform.

Thank you for following these guidelines to ensure smooth integration and deployment of Terraform modules.

**When a new tag is created the new tag must be updated in README.md file **
