variable "access_key" {}
variable "secret_key" {}
variable "region" {
    default = "us-east-1"
}
variable "ami_id" {
  type = map
  default = {
    us-east-1  = "ami-026b57f3c383c2eec"
    us-east-2  = "ami-0f924dc71d44d23e2"
    ap-south-1 = "ami-01216e7612243e0ef"
  }
}
variable "instance_type" {}
