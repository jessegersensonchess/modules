locals {
  service     = var.service
  environment = var.environment
  owner       = var.owner
  region      = var.region

}

module "ecr" {
  source       = "../../services/ecr"
  name         = local.service
  environment  = local.environment
  force_delete = var.force_delete
}

module "efs-access_point-bin" {
  source        = "../../data-stores/efs/access_point"
  service       = local.service
  path          = "/bin"
  filesystem_id = module.efs.filesystem_id
  environment   = local.environment
}

module "efs-access_point-config" {
  source        = "../../data-stores/efs/access_point"
  service       = local.service
  path          = "/config"
  filesystem_id = module.efs.filesystem_id
  environment   = local.environment
}

module "efs-access_point-logs" {
  source        = "../../data-stores/efs/access_point"
  service       = local.service
  path          = "/logs"
  filesystem_id = module.efs.filesystem_id
  environment   = local.environment
}

module "efs" {
  source          = "../../data-stores/efs/file_system"
  service         = local.service
  environment     = local.environment
  public_subnet_a = var.public_subnet_a
  public_subnet_b = var.public_subnet_b
  security_groups = var.security_groups
}

module "listener-rule" {
  source           = "../../network/load-balancers/listener_rules"
  order            = var.listener-rule-order
  target_group_arn = module.target-group.target_group["arn"]
  type             = var.listener-rule-type
  path_pattern     = var.path_pattern
  listener_arn     = var.listener_arn
  priority         = var.listener-rule-priority
}

module "service" {
  source           = "../../services/ecs/service"
  cluster          = var.cluster
  desired_count    = var.desired_count
  name             = local.service
  container_name   = module.task-definition.container_name
  container_port   = var.container_port
  target_group_arn = module.target-group.target_group["arn"]
  subnets          = var.subnets
  task_definition  = module.task-definition.output["arn"]
  security_groups  = var.security_groups
  environment      = local.environment
  owner            = local.owner
}

module "target-group" {
  source            = "../../network/load-balancers/target_groups"
  port              = var.target-group-port
  owner             = local.owner
  environment       = local.environment
  target_group_name = local.service
  health_check_path = var.health_check_path
  vpc_id            = var.vpc_id
}

module "task-definition" {
  source                 = "../../services/ecs/task_definition"
  image                  = "${module.ecr.aws_ecr_id.repository_url}:latest"
  app                    = local.service
  environment            = local.environment
  file_system_id         = module.efs.filesystem_id
  access_point_id-bin    = module.efs-access_point-bin.output["id"]
  access_point_id-config = module.efs-access_point-config.output["id"]
  access_point_id-logs   = module.efs-access_point-logs.output["id"]
  family                 = local.service
  memory                 = var.task-definition-memory
  cpu                    = var.task-definition-cpu
  awslogs-region         = local.region
  region                 = local.region
  node_env               = local.environment
  container_name         = "container-${local.service}"
  containerPort          = var.task-definition-containerPort
  hostPort               = var.task-definition-hostPort
  execution_role_arn     = var.execution_role_arn
}
