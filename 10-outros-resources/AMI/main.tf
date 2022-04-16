resource "aws_ami_from_instance" "ami-jenkins" {
  name               = "terraform-jenkins-v0.0.1"
  source_instance_id = "${var.resource_id}"
}

variable "resource_id" {
  type = string
  description = "Qual o ID da máquina?"
}