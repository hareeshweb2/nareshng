# hello world api service
locals {
  # name of the service in ECS
  service_name                     = "rating-engine"

  # ALB health check url
  health_check_path                = "/ok"

  # interval of number of seconds to perform health check
  health_check_interval            = 60

  # number of times that an unhealthy instance must be healthy in order to be added back into the ALB
  health_check_healthy_threshold   = 2

  # number of a times that a healthy instance fails before removale from the ALB
  health_check_unhealthy_threshold = 5

  # how long to wait for the health check path. A timeout indicates a failure.
  health_check_timeout             = 30

  # grace period for starting health check if needed.
  health_check_grace_period_seconds        = 80

  # the ALB port (usually 80)
  alb_port                         = 80


  scaling_memory_threshold         = "200"

  victorops_notify_group           = "@sam.flint@corvesta.com"

  # The port your container is listening for traffic on
  container_port                   = 80

  cpu_scaling_metric_period        = 180
  
  # memory
  container_memory             = 1563
  container_memory_reservation = 256

  # ECS Cluster name
  cluster_name = "${data.terraform_remote_state.portal_utility.cluster_name}"

  # Task Role Name - Check with devops if service requires additional permissions
  task_iam_role = "${data.terraform_remote_state.app_iam.default_api_task_role_arn}"  

}
