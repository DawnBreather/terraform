#---------------------------------------------------
# AWS lambda layer version
#---------------------------------------------------
resource "aws_lambda_layer_version" "lambda_layer_version" {
    count                   = "${var.enable_lambda_layer_version ? 1 : 0}"
  
    filename                = "${var.filename}"
    description             = "${var.description}"    
    layer_name              = "${var.layer_name}"

    compatible_runtimes     = ["${var.compatible_runtimes}"]

    #s3_bucket               = "${var.s3_bucket}"
    #s3_key                  = "${var.s3_keys}"
    #s3_object_version       = "${var.s3_object_version}"

    license_info            = "${var.license_info}"
    source_code_hash        = "${var.source_code_hash}"

    lifecycle {
        create_before_destroy   = true
        ignore_changes          = []
    }
        
    depends_on  = []
}