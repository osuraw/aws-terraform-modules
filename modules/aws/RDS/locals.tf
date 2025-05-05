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

locals {
  identifier                = lower(join("-", [var.project, var.application, var.environment, var.region, var.engine, "db"]))
  final_snapshot_identifier = "${local.identifier}-final-snapshot-${var.final_snapshot_identifier_suffix}"
  parameter_group_name      = "${local.identifier}-pg"
  option_group_name         = "${local.identifier}-og"
}
