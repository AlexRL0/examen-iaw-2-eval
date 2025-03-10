variable "region" {
  description = "The AWS region to use"
  default     = "us-west-2"
}

variable "ami" {
  description = "The AMI to use for the instance"
  default     = "ami-12345678"  # Reemplaza con el ID de la AMI para Ubuntu Server 24.04
}

variable "instance_type" {
  description = "The type of instance to use"
  default     = "t2.medium"
}

variable "key_name" {
  description = "The name of the key pair to use"
  default     = "vockey"
}

variable "volume_size" {
  description = "The size of the root volume in GB"
  default     = 30
}