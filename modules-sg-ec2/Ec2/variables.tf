
variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = null
}
/*
variable "ec2Name" {
  description = "name of the instance"
  type        = string
  default     = null
}
*/
variable "key_name" {
  description = "Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource"
  type        = string
  default     = null
}
