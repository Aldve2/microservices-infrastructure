variable "name" {
  description = "Name of the Application Load Balancer"
  type        = string
}

variable "internal" {
  description = "Whether the LB is internal or internet-facing"
  type        = bool
  default     = false
}

variable "security_groups" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "subnets" {
  description = "List of subnet IDs for the ALB"
  type        = list(string)
}