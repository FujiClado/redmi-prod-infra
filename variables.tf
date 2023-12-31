variable "ami_id" {

  type        = string
  description = "ami id of the instance"
  default     = "ami-02e94b011299ef128"

}


variable "instance_type" {

  type        = string
  description = "instance type"
  default     = "t2.micro"

}

variable "project_name" {

  type        = string
  description = "name of the project"
  default     = "redmi"

}

variable "project_env" {

  type        = string
  description = "project environment"
  default     = "production"

}

variable "project_owner" {

  type        = string
  description = "project owner"
  default     = "abin"

}


variable "hosted_zone_name" {

  type        = string
  description = "domain name"
  default     = "jijinmichael.online"

}

variable "hostanme" {

  type        = string
  description = "hostname"
  default     = "terraform"

}
