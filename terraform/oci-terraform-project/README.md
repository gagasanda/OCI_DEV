# OCI Terraform Project

This project is designed to provision and manage resources on Oracle Cloud Infrastructure (OCI) using Terraform. It is structured to support modular configurations and different environments.

## Project Structure

```
oci-terraform-project
├── modules
│   └── example-module
│       ├── main.tf          # Main configuration for the example module
│       ├── variables.tf     # Input variables for the example module
│       └── outputs.tf       # Outputs for the example module
├── environments
│   └── dev
│       ├── main.tf          # Main configuration for the development environment
│       ├── variables.tf     # Input variables for the development environment
│       └── outputs.tf       # Outputs for the development environment
├── provider.tf              # Provider configuration for OCI
├── variables.tf             # Global input variables for the project
├── outputs.tf               # Global outputs for the project
├── terraform.tfvars         # Variable values for the project
└── README.md                # Documentation for the project
```

## Getting Started

1. **Prerequisites**
   - Ensure you have Terraform installed on your machine.
   - Set up your Oracle Cloud Infrastructure account and obtain the necessary credentials.

2. **Configuration**
   - Update the `terraform.tfvars` file with your specific variable values.
   - Modify the `provider.tf` file to include your OCI authentication details.

3. **Initialize the Project**
   - Run `terraform init` in the project root to initialize the Terraform configuration.

4. **Apply the Configuration**
   - Use `terraform apply` to create the resources defined in your configurations.

5. **Outputs**
   - After applying, check the outputs defined in `outputs.tf` to see the results of your deployment.

## Modules

This project utilizes modules to encapsulate and reuse configurations. The `example-module` can be customized and instantiated in different environments as needed.

## Environments

The project supports multiple environments. The `dev` environment is set up as an example, and you can create additional environments by following the same structure.

## Contributing

Feel free to contribute to this project by submitting issues or pull requests. Ensure that your changes are well-documented and tested.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.