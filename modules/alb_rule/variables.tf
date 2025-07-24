variable "name" {
  description = "Nombre del target group"
  type        = string
}

variable "port" {
  description = "Puerto del target group"
  type        = number
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "listener_arn" {
  description = "ARN del listener del ALB"
  type        = string
}

variable "priority" {
  description = "Prioridad de la regla del listener"
  type        = number
}

variable "path" {
  description = "Path que activa la regla"
  type        = string
}

variable "health_check_path" {
  description = "Path del health check"
  type        = string
}

variable "health_check_port" {
  description = "Puerto del health check"
  type        = string
}
