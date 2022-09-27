# # ELB Security group
# resource "aws_security_group" "elb_sg" {
#   name_prefix = "${var.environment}-elb-sg"
#   description = "Allow all inbound traffic from port 80"
#   vpc_id      = aws_vpc.main.id

#   tags = {
#     Name        = format("%s-elb-security-group", var.environment)
#     Environment = var.environment
#     Owner       = var.owner
#     "Manage by" : "Terraform"
#   }

#   lifecycle {
#     create_before_destroy = true
#   }
# }

# resource "aws_security_group_rule" "elb_allow_all_http" {
#   type              = "ingress"
#   from_port         = 80
#   to_port           = 80
#   protocol          = "tcp"
#   cidr_blocks       = ["0.0.0.0/0"]
#   security_group_id = aws_security_group.elb_sg.id
# }

# resource "aws_security_group_rule" "elb_allow_all_outbound" {
#   type              = "egress"
#   from_port         = 0
#   to_port           = 0
#   protocol          = "-1"
#   cidr_blocks       = ["0.0.0.0/0"]
#   security_group_id = aws_security_group.elb_sg.id
# }
