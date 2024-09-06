# # Security Profile. This security profile will have “BasicAgentAccess” and “OutboundCallAccess” as a permission.
resource "aws_connect_security_profile" "security_profile" {
  instance_id = aws_connect_instance.instance.id
  name        = var.common_name
  description = "${var.common_name} security profile"
permissions = [
    "BasicAgentAccess",
    "OutboundCallAccess",
  ]
tags = {
    "Name" = "${var.common_name}"
  }
}

# #The user will be attached to the security profile provisioned through last block.
resource "aws_connect_user" "user" {
  instance_id        = aws_connect_instance.instance.id
  name               = "bob@test.com"
  password           = "Password123"
  routing_profile_id = aws_connect_routing_profile.routing_profile.routing_profile_id
security_profile_ids = [
    aws_connect_security_profile.security_profile.security_profile_id
  ]
identity_info {
    first_name = "Bob"
    last_name  = "Test"
  }
phone_config {
    after_contact_work_time_limit = 0
    phone_type                    = "SOFT_PHONE"
  }
}