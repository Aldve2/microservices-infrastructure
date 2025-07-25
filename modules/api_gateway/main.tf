resource "aws_apigatewayv2_api" "crm_api_gateway" {
  name          = var.name
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_stage" "default" {
  api_id      = aws_apigatewayv2_api.crm_api_gateway.id
  name        = "$default"
  auto_deploy = true
}

resource "aws_apigatewayv2_integration" "integrations" {
  for_each                 = toset(var.routes)
  api_id                   = aws_apigatewayv2_api.crm_api_gateway.id
  integration_type         = "HTTP_PROXY"
  integration_method       = "ANY"
  integration_uri          = "${var.alb_url}${each.value}"
  payload_format_version   = "1.0"
  timeout_milliseconds     = 30000
}

resource "aws_apigatewayv2_route" "routes" {
  for_each  = toset(var.routes)
  api_id    = aws_apigatewayv2_api.crm_api_gateway.id
  route_key = "ANY ${each.value}"
  target    = "integrations/${aws_apigatewayv2_integration.integrations[each.key].id}"
}

resource "aws_apigatewayv2_api" "crm_api_gateway" {
  name          = var.name
  protocol_type = "HTTP"

  cors_configuration {
    allow_origins = ["*"]
    allow_methods = ["*"]
    allow_headers = ["Content-Type", "Authorization", "X-Amz-Date", "X-Api-Key", "X-Amz-Security-Token"]
    expose_headers = ["*"]  
    max_age = 3600
  }
}