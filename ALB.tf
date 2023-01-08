# Configuring Application Load Balancer:

# Note: ALB Can only be Used if there are 02 Public Subnets (In our Case, we have One).


# resource "aws_lb" "alb" {
#   name               = "Test-LB-tf"
#   internal           = false
#   load_balancer_type = "application"
#   security_groups    = [aws_security_group.allow_tls_public.id]
#   subnets            = [for subnet in aws_subnet.public : subnet.id]

#   enable_deletion_protection = false

#   tags = {
#     Environment = "test"
#   }
# }

# Target Group:

# resource "aws_lb_target_group" "albtg" {
#   name     = "tf-Example-LB-TG"
#   port     = 80
#   protocol = "HTTP"
#   target_type = "instance"
#   vpc_id   = aws_vpc.main.id

#   health_check {    
#     healthy_threshold   = 3    
#     unhealthy_threshold = 10    
#     timeout             = 5    
#     interval            = 10    
#     path                = "/"    # root.
#     port                = 80  
#   }
# }

# resource "aws_lb_target_group_attachment" "front_end" {
#   target_group_arn = aws_lb_target_group.albtg.arn
#   target_id        = aws_instance.web.id
#   port             = 80
#
# }


# Listener: 

# resource "aws_lb_listener" "albl" {
#   load_balancer_arn = aws_lb.alb.arn
#   port              = "80"
#   protocol          = "HTTP"

#   default_action {
#     type             = "forward"    # To the Target Group.
#     target_group_arn = aws_lb_target_group.albtg.arn
#   }
# }
