#---------------------------------------------------
# AWS lambda alias
#---------------------------------------------------
resource "aws_lambda_alias" "lambda_alias" {
    count               = "${var.enable_lambda_alias ? 1 : 0}"

    name                = "${var.lambda_alias_name}"
    description         = "${var.description}"
    function_name       = "${var.function_name}"
    function_version    = "${var.function_version}"

    routing_config      = {
        additional_version_weights = "${var.additional_version_weights}"
    }

    lifecycle {
        create_before_destroy   = true
        ignore_changes          = []
    }
        
    depends_on  = []
}