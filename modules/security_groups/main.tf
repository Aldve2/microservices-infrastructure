#Security Group for ECS instances
# resource "aws_security_group" "ecs_tasks" {
#   for_each    = var.security_groups
#   name        = each.value.name
#   description = "Allow ECS tasks to access"
#   vpc_id      = var.vpc_id

#   dynamic "ingress" {
#     for_each = each.value.ingress_rules
#     content {
#       description     = ingress.value.description
#       from_port       = ingress.value.from_port
#       to_port         = ingress.value.to_port
#       protocol        = ingress.value.protocol
#     }
#   }

#   dynamic "egress" {
#     for_each = each.value.egress_rules
#     content {
#       from_port   = egress.value.from_port
#       to_port     = egress.value.to_port
#       protocol    = egress.value.protocol
#       cidr_blocks = egress.value.cidr_blocks
#     }
#   }
#   tags = {
#     Name = try(each.value.name, each.key)
#   }
# }

resource "aws_security_group" "sg_person_service" {
  name        = "sg_person_service"
  description = "SG for person service"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   ingress {
    from_port   = 10011
    to_port     = 10011
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg_person_service"
  }
}


resource "aws_security_group" "sg_role_service" {
  name        = "sg_role_service"
  description = "SG for role service"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   ingress {
    from_port   = 10094
    to_port     = 10094
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg_role_service"
  }
}

resource "aws_security_group" "sg_user_service" {
  name        = "sg_user_service"
  description = "SG for user service"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   ingress {
    from_port   = 10021
    to_port     = 10021
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg_user_service"
  }
}

resource "aws_security_group" "sg_team_service" {
  name        = "sg_team_service"
  description = "SG for team service"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   ingress {
    from_port   = 10041
    to_port     = 10041
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg_team_service"
  }
}

resource "aws_security_group" "sg_objective_service" {
  name        = "sg_objective_service"
  description = "SG for objective service"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   ingress {
    from_port   = 10061
    to_port     = 10061
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg_objective_service"
  }
}

resource "aws_security_group" "sg_session_service" {
  name        = "sg_session_service"
  description = "SG for session service"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   ingress {
    from_port   = 10081
    to_port     = 10081
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg_session_service"
  }
}

resource "aws_security_group" "sg_authentication_service" {
  name        = "sg_authentication_service"
  description = "SG for authentication service"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   ingress {
    from_port   = 10061
    to_port     = 10061
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg_authentication_service"
  }
}

resource "aws_security_group" "sg_project_service" {
  name        = "sg_project_service"
  description = "SG for project service"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   ingress {
    from_port   = 10051
    to_port     = 10051
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg_project_service"
  }
}

resource "aws_security_group" "sg_task_service" {
  name        = "sg_task_service"
  description = "SG for task service"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   ingress {
    from_port   = 10071
    to_port     = 10071
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg_task_service"
  }
}

resource "aws_security_group" "sg_forum_service" {
  name        = "sg_forum_service"
  description = "SG for forum service"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   ingress {
    from_port   = 10103
    to_port     = 10103
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg_forum_service"
  }
}