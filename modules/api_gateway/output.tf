output "api_id" {
  description = " API Gateway IP"
  value       = aws_apigatewayv2_api.crm_api_gateway.id
}

output "api_endpoint" {
  description = "API gateway public endpoint"
  value       = aws_apigatewayv2_api.crm_api_gateway.api_endpoint
}