# -------------------------------------------------------------------------------------
#
# Copyright (c) 2025, WSO2 LLC. (http://www.wso2.com). All Rights Reserved.
#
# This software is the property of WSO2 LLC. and its suppliers, if any.
# Dissemination of any information or reproduction of any material contained
# herein in any form is strictly forbidden, unless permitted by WSO2 expressly.
# You may not alter or remove any copyright or other notice from copies of this content.
#
# --------------------------------------------------------------------------------------

output "db_identifier" {
  description = "Identifier of the RDS instance"
  value       = aws_db_instance.database.identifier
}

output "db_instance_address" {
  description = "The address of the RDS instance"
  value       = aws_db_instance.database.address
}

output "db_instance_arn" {
  description = "The ARN of the RDS instance"
  value       = aws_db_instance.database.arn
}

output "db_instance_endpoint" {
  description = "The connection endpoint"
  value       = aws_db_instance.database.endpoint
}


output "db_instance_hosted_zone_id" {
  description = "The canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record)"
  value       = aws_db_instance.database.hosted_zone_id
}

output "db_instance_id" {
  description = "The RDS instance ID"
  value       = aws_db_instance.database.id
}

output "db_root_id" {
  description = "The RDS manged secret key"
  value       = aws_db_instance.database.master_user_secret[0].secret_arn
}
