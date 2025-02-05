variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  default = "ami-12345678" # Replace with a valid AMI ID
}

variable "key_name" {
  default = "my-key-pair"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "TerraformInstance"
  }
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
