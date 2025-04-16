provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0a2370e7c0f21e179 "
instance_type = "t2.medium"
key_name = "pavan"
vpc_security_group_ids = ["sg-07205c612ad4b0e79"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "AppServer-1", "AppServer-2", "Monitoring server"]
}
