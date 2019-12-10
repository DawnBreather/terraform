#---------------------------------------------------
# AWS lambda function
#---------------------------------------------------
resource "aws_lambda_function" "lambda_function" {
    count               = "${var.enable_lambda_function ? 1 : 0}"

    filename            = "${var.filename}"
    function_name       = "${var.function_name}"
    role                = "${var.role}"
    handler             = "${var.handler}"

    source_code_hash    = "${var.source_code_hash}"

    runtime             = "${var.runtime}"

    environment {
        variables = "${var.env_vars}"
    }

    lifecycle {
        create_before_destroy   = true
        ignore_changes          = []
    }
        
    depends_on  = []
}