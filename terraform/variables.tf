# Variables
variable "region" {
  description = "La región de AWS a usar"
  default     = "us-west-2"
}

variable "ami" {
  description = "La AMI a usar para la instancia"
  default     = "ami-04b4f1a9cf54c11d0"

}

variable "instance_type" {
  description = "El tipo de instancia a usar"
  default     = "t2.medium"
}

variable "key_name" {
  description = "El nombre del key pair a usar"
  default     = "vockey"
}

variable "volume_size" {
  description = "El tamaño del volumen root en GB"
  default     = 30
}