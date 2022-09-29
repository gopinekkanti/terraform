resource "aws_instance" "blueapps" {
ami = "${lookup(var.ami_id, var.region)}"
instance_type = var.instance_type
tags = {
   Name = "blueapps"
     }
provisioner "local-exec" {
command = "echo ${aws_instance.blueapps.private_ip} >>ip.txt"
}
provisioner "local-exec" {
command = "echo ${aws_instance.blueapps.arn} >>arn.txt"
  }
}
resource "aws_s3_bucket" "nvgrbucket9996"{
  bucket = "nvgrbucket9996"

  tags = {
    Name = "nvgrbucket9996"
  }
}
