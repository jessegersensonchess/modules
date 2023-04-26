locals {
  service     = var.service
  environment = var.environment
  owner       = var.owner
  region      = var.region
}

module "ecr" {
  #source = "git::https://github.com/jessegersensonchess/terraform.git//modules/services/ecr"#?refv0.0.17"
  # ${path.module}
  source       = "../../services/ecr"
  name         = local.service
  environment  = local.environment
  force_delete = var.force_delete
  scan_on_push = var.scan_on_push
}

module "efs-access_point-bin" {
  #source = "git::https://github.com/jessegersensonchess/terraform.git//modules/data-stores/efs/access_point"#?refv0.0.17"
  source        = "../../data-stores/efs/access_point"
  service       = local.service
  path          = "/bin"
  filesystem_id = module.efs.filesystem_id
  environment   = local.environment
}

module "efs-access_point-config" {
  #source = "git::https://github.com/jessegersensonchess/terraform.git//modules/data-stores/efs/access_point"#?refv0.0.17"
  source        = "../../data-stores/efs/access_point"
  service       = local.service
  path          = "/config"
  filesystem_id = module.efs.filesystem_id
  environment   = local.environment
}

module "efs-access_point-logs" {
  #source = "git::https://github.com/jessegersensonchess/terraform.git//modules/data-stores/efs/access_point"#?refv0.0.17"
  source        = "../../data-stores/efs/access_point"
  service       = local.service
  path          = "/logs"
  filesystem_id = module.efs.filesystem_id
  environment   = local.environment
}

module "efs" {
  #source = "git::https://github.com/jessegersensonchess/terraform.git//modules/data-stores/efs/file_system"#?refv0.0.17"
  source          = "../../data-stores/efs/file_system"
  service         = local.service
  environment     = local.environment
  public_subnet_a = var.public_subnet_a
  public_subnet_b = var.public_subnet_b
  security_groups = var.security_groups
}

module "listener-rule" {
  #source = "git::https://github.com/jessegersensonchess/terraform.git//modules/network/load-balancers/listener_rules"#?refv0.0.17"
  source           = "../../network/load-balancers/listener_rules"
  order            = var.listener-rule-order
  target_group_arn = module.target-group.target_group["arn"]
  type             = var.listener-rule-type
  path_pattern     = var.path_pattern
  listener_arn     = var.listener_arn
  priority         = var.listener-rule-priority
}

data "aws_ecr_image" "image" {
  repository_name = local.service
  image_tag       = "latest"
}

output "aws_ecr_id" {
  value = data.aws_ecr_image.image.id
}

output "aws_ecr_image-image_pushed_at" {
  value = data.aws_ecr_image.image.image_pushed_at
}

module "service" {
  #source = "git::https://github.com/jessegersensonchess/terraform.git//modules/services/ecs/service"#?refv0.0.17"
  source               = "../../services/ecs/service"
  cluster              = var.cluster
  desired_count        = var.desired_count
  name                 = local.service
  container_name       = module.task-definition.container_name
  container_port       = var.container_port
  target_group_arn     = module.target-group.target_group["arn"]
  subnets              = var.subnets
  task_definition      = module.task-definition.output["arn"]
  security_groups      = var.security_groups
  environment          = local.environment
  owner                = local.owner
  force_new_deployment = var.force_new_deployment
  control_value        = data.aws_ecr_image.image.id # use to detect image changes

}

module "target-group" {
  #source = "git::https://github.com/jessegersensonchess/terraform.git//modules/network/load-balancers/target_groups"#?refv0.0.17"
  source                         = "../../network/load-balancers/target_groups"
  port                           = var.target-group-port
  owner                          = local.owner
  environment                    = local.environment
  target_group_name              = local.service
  health_check_path              = var.health_check_path
  health_check_threshold         = var.health_check_threshold
  health_check_timeout           = var.health_check_timeout
  health_check_healthy_threshold = var.health_check_healthy_threshold
  health_check_interval          = var.health_check_interval
  vpc_id                         = var.vpc_id
  deregistration_delay           = var.deregistration_delay
}

module "task-definition" {
  #source = "git::https://github.com/jessegersensonchess/terraform.git//modules/services/ecs/task_definition"#?refv0.0.17"
  source                 = "../../services/ecs/task_definition"
  image                  = "${module.ecr.url}:latest"
  app                    = local.service
  service                = local.service
  environment            = local.environment
  file_system_id         = module.efs.filesystem_id
  access_point_id-bin    = module.efs-access_point-bin.output["id"]
  access_point_id-config = module.efs-access_point-config.output["id"]
  access_point_id-logs   = module.efs-access_point-logs.output["id"]
  family                 = local.service
  owner                  = local.owner
  bin-containerPath      = var.bin-containerPath
  logs-containerPath     = var.logs-containerPath
  config-containerPath   = var.config-containerPath
  memory                 = var.task-definition-memory
  cpu                    = var.task-definition-cpu
  awslogs-region         = local.region
  region                 = local.region
  node_env               = local.environment
  container_name         = "container-${local.service}"
  containerPort          = var.task-definition-containerPort
  hostPort               = var.task-definition-hostPort
  execution_role_arn     = var.execution_role_arn
  description            = "definition for ${local.service} in the ${local.environment} environment"
  safe_to_delete         = var.safe_to_delete

}

