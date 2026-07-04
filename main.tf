resource "aws_instance" "script" {
 ami = "ami-0aba19e56f3eaec05"
 instance_type = var.instance_type
 }

resource "aws_ s3_bucker" "scriptbuccket"{
 bucket = var.bucket_name

}
