variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "ami_id" {
  default = "ami-12345678" # Update with a valid AMI ID
}

variable "instance_type" {
  default = "t2.micro"
}

variable "bucket_name" {
  default = "my-terraform-bucket"
}