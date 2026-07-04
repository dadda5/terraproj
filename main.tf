resource "aws_instance" "script" {
 ami = "ami-0aba19e56f3eaec05"
 instance_type = var.instance_type
 }

resource "aws_s3_bucket" "scriptbuccket"{
 bucket = var.bucket_name
 tags = {
  name = var.project_name
  }
}

resource "aws_lb" "lb" {
 name = "script_lb"
 internal = false
 load_balancer_type = "application"
 security group = [var.secrity_group_id]
 subnets = var.subnet_ids
 tags = {
 name = var.project_name
 }
}
