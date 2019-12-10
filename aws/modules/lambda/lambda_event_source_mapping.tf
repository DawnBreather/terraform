#---------------------------------------------------
# AWS lambda event source mapping
# https://www.terraform.io/docs/providers/aws/r/lambda_event_source_mapping.html
#---------------------------------------------------
resource "aws_lambda_event_source_mapping" "lambda_event_source_mapping_dynamodb" {
    count               = "${var.enable_lambda_event_source_mapping_dynamodb ? 1 : 0}"

    event_source_arn    = "${var.event_source_arn}"
    function_name       = "${var.function_name}"
    starting_position   = "${var.starting_position}"

    lifecycle {
        create_before_destroy   = true
        ignore_changes          = []
    }
        
    depends_on  = []
}

resource "aws_lambda_event_source_mapping" "lambda_event_source_mapping_kinesis" {
    count               = "${var.enable_lambda_event_source_mapping_kinesis ? 1 : 0}"

    event_source_arn    = "${var.event_source_arn}"
    function_name       = "${var.function_name}"
    starting_position   = "${var.starting_position}"

    lifecycle {
        create_before_destroy   = true
        ignore_changes          = []
    }
        
    depends_on  = []
}

resource "aws_lambda_event_source_mapping" "lambda_event_source_mapping_sqs" {
    count               = "${var.enable_lambda_event_source_mapping_sqs ? 1 : 0}"

    event_source_arn    = "${var.event_source_arn}"
    function_name       = "${var.function_name}"
    starting_position   = "${var.starting_position}"

    lifecycle {
        create_before_destroy   = true
        ignore_changes          = []
    }
            
    depends_on  = []
}