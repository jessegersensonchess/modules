terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.64.0"
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
  mountPoints = [
    {
      "sourceVolume" : "bin",
      "containerPath" : var.bin-containerPath,
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




  dynamic "volume" {
    for_each = var.volumes
    content {
      name = volume.value.name

      host_path = lookup(volume.value, "host_path", null)

      dynamic "docker_volume_configuration" {
        for_each = lookup(volume.value, "docker_volume_configuration", [])
        content {
          autoprovision = lookup(docker_volume_configuration.value, "autoprovision", null)
          driver        = lookup(docker_volume_configuration.value, "driver", null)
          driver_opts   = lookup(docker_volume_configuration.value, "driver_opts", null)
          labels        = lookup(docker_volume_configuration.value, "labels", null)
          scope         = lookup(docker_volume_configuration.value, "scope", null)
        }
      }

      dynamic "efs_volume_configuration" {
        for_each = lookup(volume.value, "efs_volume_configuration", [])
        content {
          file_system_id          = lookup(efs_volume_configuration.value, "file_system_id", null)
          root_directory          = lookup(efs_volume_configuration.value, "root_directory", null)
          transit_encryption      = lookup(efs_volume_configuration.value, "transit_encryption", null)
          transit_encryption_port = lookup(efs_volume_configuration.value, "transit_encryption_port", null)
          dynamic "authorization_config" {
            for_each = lookup(efs_volume_configuration.value, "authorization_config", [])
            content {
              access_point_id = lookup(authorization_config.value, "access_point_id", null)
              iam             = lookup(authorization_config.value, "iam", null)
            }
          }
        }
      }
    }
  }














}
