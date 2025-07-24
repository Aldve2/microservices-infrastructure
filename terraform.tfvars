tags = {
  "env"         = "PROD"
  "owner"       = "Dav"
  "cloud"       = "aws"
  "IAC"         = "Terraform"
  "IAC_Version" = "1.11.3"
  "project"     = "CRM"
}

#VPC
vpc_cidr = "10.0.0.0/16"

azs = ["us-east-1a", "us-east-1b"]

public_subnets = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

private_subnets = [
  "10.0.101.0/24",
  "10.0.102.0/24"
]


#ECS SG
security_groups = {
  person_service = {
    name          = "sg_person_service"
    description = "SG for person service"
    ingress_rules = [
      {
        description = "person_service port"
        from_port   = 10011
        to_port     = 10011
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }
    ]
    egress_rules = [
      {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
      }
    ]
  }
 
    

}
