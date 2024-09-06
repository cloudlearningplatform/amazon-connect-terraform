# Create a variables.tf file which will contains all the variables

variable "instance_alias" {
  type = string
  description = "Alias name of the instance"
}
variable "identity_management_type" {
  type = string
  description = "Identity management type. Accepted Values: SAML , CONNECT_MANAGED, EXISTING_DIRECTORY"
  default = "CONNECT_MANAGED"
}
variable "contact_flow_type" {
  type = string
  description = "Type of contact flow"
  default = "CONTACT_FLOW"
}
variable "common_name" {
  type =string
  description = "A common name of the amazon connect resources"
}
variable "lambda_function_arn" {
  description = "ARN of the lambda function for association with connect instance"
}