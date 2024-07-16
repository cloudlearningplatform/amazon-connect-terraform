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

```sh
git clone https://github.com/your-repository/terraform-amazon-connect.git
cd terraform-amazon-connect
