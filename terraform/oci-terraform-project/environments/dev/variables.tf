variable "compartment_id" {
  description = "The OCID of the compartment where resources will be created."
  type        = string
}

variable "availability_domain" {
  description = "The availability domain to use for the resources."
  type        = string
}

variable "instance_shape" {
  description = "The shape of the compute instance."
  type        = string
  default     = "VM.Standard2.1"
}

variable "ssh_public_key" {
  description = "The SSH public key for accessing the instance."
  type        = string
}