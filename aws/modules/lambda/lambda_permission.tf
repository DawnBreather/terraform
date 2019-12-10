#---------------------------------------------------
# AWS lambda permission
#---------------------------------------------------
resource "aws_lambda_permission" "lambda_permission_cloudwatch" {
    count           = "${var.enable_lambda_permission_cloudwatch ? 1 : 0}"
    
    statement_id    = "${var.statement_id}"
    action          = "${var.action}"
    function_name   = "${var.function_name}"
    principal       = "${var.principal}"
    source_arn      = "${var.source_arn}"
    qualifier       = "${var.qualifier}"

    lifecycle {
        create_before_destroy   = true
        ignore_changes          = []
    }
    
    depends_on  = []
}

resource "aws_lambda_permission" "lambda_permission_sns" {
    count           = "${var.enable_lambda_permission_sns ? 1 : 0}"

    statement_id    = "${var.statement_id}"
    action          = "${var.action}"
    function_name   = "${var.function_name}"
    principal       = "${var.principal}"
    source_arn      = "${var.source_arn}"

    lifecycle {
        create_before_destroy   = true
        ignore_changes          = []
    }
    
    depends_on  = []
}

resource "aws_lambda_permission" "lambda_permission_api_gateway" {
    count           = "${var.enable_lambda_permission_api_gateway ? 1 : 0}"
    
    statement_id    = "${var.statement_id}"
    action          = "${var.action}"
    function_name   = "${var.function_name}"
    principal       = "${var.principal}"
    source_arn      = "${var.source_arn}"

    lifecycle {
        create_before_destroy   = true
        ignore_changes          = []
    }
    
    depends_on  = []
}