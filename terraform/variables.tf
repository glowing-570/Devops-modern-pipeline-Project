variable "region" {
  default = "us-east-1"
}

variable "project_name" {
  default = "devops-pipeline"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  description = "Your AWS key pair name"
  default     = "demo-key"
}
