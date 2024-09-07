# Amazon Connect Instance Setup with Terraform

This Terraform project sets up an Amazon Connect instance with the following components:
- Creates an Amazon Connect instance.
- Associates a Lambda function with the Connect instance.
- Sets up IAM roles and policies for the Connect administrator.
- Creates a Connect user with the password retrieved securely from AWS Secrets Manager.

## Prerequisites

Before you begin, ensure you have the following:
- An AWS account with appropriate permissions to create resources.
- Terraform installed on your local machine.
- AWS CLI installed and configured with your credentials.

## Project Structure

The project consists of the following files:

- `main.tf`: Contains the main Terraform configuration for creating resources.
- `variables.tf`: Defines the input variables used in the Terraform configuration.
- `dev.tfvars`: Contains the values for the variables used in the development environment.
- `outputs.tf`: (Optional) Defines outputs to retrieve information about the created resources.

## Steps to Use

Follow these steps to set up your Amazon Connect instance:

### 1. Clone the Repository


git clone https://github.com/your-repository/terraform-amazon-connect.git
cd terraform-amazon-connect

### 2. Configure AWS Secrets Manager
Store your Connect administrator password in AWS Secrets Manager. You can do this via the AWS Management Console or AWS CLI. Make sure to name your secret connect-admin-password.

### 3. Modify Variable Values
Edit the dev.tfvars file to specify your variable values.

identity_management_type = ""
instance_alias           = ""
lambda_function_arn      = ""

### 4. Initialize Terraform
Initialize your Terraform working directory.

terraform init

### 5. Plan the Terraform Execution
Create an execution plan to review the resources that will be created.

terraform plan -var-file="dev.tfvars"

### 6. Apply the Terraform Configuration
Apply the Terraform configuration to create the resources.

terraform apply -var-file="dev.tfvars"

### 7. Verify the Setup
Once the resources are created, verify that the Amazon Connect instance is set up correctly and that the Connect user has been created with the specified password.

## Clean Up
To destroy the resources created by this Terraform configuration, run:

terraform destroy -var-file="dev.tfvars"

## Contributing
If you wish to contribute to this project, please fork the repository and submit a pull request with your changes.

## License
This project is licensed under the MIT License - see the LICENSE file for details.

This README file provides a comprehensive introduction to the project, including prerequisites, project structure, steps to use, and additional information on contributing and licensing. Adjust the content as needed to match your project's specifics.





