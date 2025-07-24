output "sg_person_service_id" {
  value = aws_security_group.sg_person_service.id
}
output "sg_role_service_id" {
  value = aws_security_group.sg_role_service.id
}
output "sg_user_service_id" {
  value = aws_security_group.sg_user_service.id
}
output "sg_team_service_id" {
  value = aws_security_group.sg_team_service.id
}
output "sg_objective_service_id" {
  value = aws_security_group.sg_objective_service.id
}
output "sg_session_service_id" {
  value = aws_security_group.sg_session_service.id
}
output "sg_authentication_service_id" {
  value = aws_security_group.sg_authentication_service.id
}
output "sg_project_service_id" {
  value = aws_security_group.sg_project_service.id
}
output "sg_task_service_id" {
  value = aws_security_group.sg_task_service.id
}
output "sg_forum_service_id" {
  value = aws_security_group.sg_forum_service.id
}

# output "security_group_ids" {
#   description = "IDs for security groups"
#   value = {
#     for name, sg in aws_security_group.ecs_tasks :
#     name => sg.id
#   }
# }

# output "security_group_names" {
#   description = "Names for security groups"
#   value = {
#     for name, sg in aws_security_group.ecs_tasks :
#     name => sg.name
#   }
# }

# output "person_service_sg_id" {
#   value = aws_security_group.ecs_tasks["person_service"].id
# }