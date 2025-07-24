variable "name" {
  description = "API Gateway name"
  type        = string
}

variable "alb_url" {
  description = "Base URL for ALB"
  type        = string
}

variable "routes" {
  description = "microservices routes"
  type        = list(string)
}