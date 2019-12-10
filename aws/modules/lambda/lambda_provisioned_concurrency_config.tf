#---------------------------------------------------
# AWS lambda provisioned concurrency config
#---------------------------------------------------
resource "aws_lambda_provisioned_concurrency_config" "lambda_provisioned_concurrency_config_alias" {
    count                               = "${var.enable_lambda_provisioned_concurrency_config_alias && !var.enable_lambda_provisioned_concurrency_config_version ? 1 : 0}" 

    function_name                       = "${var.function_name}"
    provisioned_concurrent_executions   = "${var.provisioned_concurrent_executions}"
    qualifier                           = "${var.qualifier}"

    timeouts {
        create  = "${var.timeouts_create}"
        update  = "${var.timeouts_update}"
    }

    lifecycle {
        create_before_destroy   = true
        ignore_changes          = []
    }
    
    depends_on  = []
}

resource "aws_lambda_provisioned_concurrency_config" "lambda_provisioned_concurrency_config_version" {
    count                = "${var.enable_lambda_provisioned_concurrency_config_version && !var.enable_lambda_provisioned_concurrency_config_alias ? 1 : 0}" 

    function_name                       = "${var.function_name}"
    provisioned_concurrent_executions   = "${var.provisioned_concurrent_executions}"
    qualifier                           = "${var.qualifier}"

    timeouts {
        create  = "${var.timeouts_create}"
        update  = "${var.timeouts_update}"
    }

    lifecycle {
        create_before_destroy   = true
        ignore_changes          = []
    }
    
    depends_on  = []
}