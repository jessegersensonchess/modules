terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #      version = "~> 4.64.0"
    }
  }
}

locals {
  container_name     = var.container_name
  containerPort      = var.containerPort
  hostPort           = var.hostPort
  execution_role_arn = var.execution_role_arn
  owner              = var.owner
  service            = var.service
  environment        = var.environment
  safe_to_delete     = var.safe_to_delete
  description        = var.description
  mountPoints = length(var.mountPoints) > 0 ? var.mountPoints : [
    {
      "sourceVolume" : "bin",
      "containerPath" : "${var.bin-containerPath}",
      "readOnly" : true
    },
    {
      "sourceVolume" : "config",
      "containerPath" : var.config-containerPath,
      "readOnly" : true
    },
    {
      "sourceVolume" : "logs",
      "containerPath" : var.logs-containerPath,
      "readOnly" : false
    }
  ]
}

resource "aws_cloudwatch_log_group" "log_group" {
  name = "${var.awslogs-stream-prefix}/${var.family}"
}

resource "aws_ecs_task_definition" "definition" {
  container_definitions = jsonencode([
    {
      "cpu" : 0,
      "dockerLabels" : {
        "APP" : upper(var.app),
        "ENV" : var.environment
      },
      "environment" : [
        for key, value in var.environment-variables :
        {
          "name" : key,
          "value" : value
        }
      ],
      "essential" : var.essential,
      "image" : var.image,
      "logConfiguration" : {
        "logDriver" : "awslogs",
        "options" : {
          "awslogs-group" : "${var.awslogs-stream-prefix}/${var.family}",
          "awslogs-region" : var.region,
          "awslogs-stream-prefix" : var.awslogs-stream-prefix
        }
      },
      "mountPoints" : local.mountPoints,
      "name" : local.container_name,
      "portMappings" : [
        {
          "containerPort" : local.containerPort,
          "hostPort" : local.hostPort,
          "name" : "${local.container_name}-${var.containerPort}-${var.protocol}",
          "protocol" : "tcp"
        }
      ],
      #    "secrets": [
      #      {
      #        "name": "DB_PASS",
      #        "valueFrom": "${var.db_pass}"
      #      },
      "readonlyRootFilesystem" : var.readonlyRootFilesystem,
      "volumesFrom" : [],
      "workingDirectory" : var.workingDirectory
    }
  ])
  cpu                      = var.cpu
  execution_role_arn       = local.execution_role_arn
  family                   = var.family
  memory                   = var.memory
  network_mode             = var.network_mode
  requires_compatibilities = var.requires_compatibilities

  runtime_platform {
    operating_system_family = "LINUX"
  }

  tags = {
    APP            = var.app
    ENV            = local.environment
    Environment    = local.environment
    Owner          = local.owner
    Service        = local.service
    safe_to_delete = local.safe_to_delete
    Description    = local.description
  }

  task_role_arn = local.execution_role_arn

  #### volume: logs ####
  volume {
    name = var.name-logs
    efs_volume_configuration {
      authorization_config {
        access_point_id = var.access_point_id-logs
        iam             = "ENABLED"
      }
      file_system_id     = var.file_system_id
      root_directory     = var.root_directory-logs
      transit_encryption = "ENABLED"
    }
  }

  #### volume: config ####
  volume {
    name = var.name-config
    efs_volume_configuration {
      authorization_config {
        access_point_id = var.access_point_id-config
        iam             = "ENABLED"
      }
      file_system_id     = var.file_system_id
      root_directory     = var.root_directory-config
      transit_encryption = "ENABLED"
    }
  }

  #### volume: bin ####
  volume {
    name = var.name-bin
    efs_volume_configuration {
      authorization_config {
        access_point_id = var.access_point_id-bin
        iam             = "ENABLED"
      }
      file_system_id     = var.file_system_id
      root_directory     = var.root_directory-bin
      transit_encryption = "ENABLED"
    }
  }














}
