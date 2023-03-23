resource "aws_ebs_volume" "tfer--vol-0404ead11c9e01f93" {
  availability_zone    = "us-east-2a"
  encrypted            = "false"
  iops                 = "100"
  multi_attach_enabled = "false"
  size                 = "20"
  snapshot_id          = "snap-06d525bf529332015"

  tags = {
    Name    = "ws-wxv-efs"
    env     = "staging"
    service = "ws-wxv"
  }

  tags_all = {
    Name    = "ws-wxv-efs"
    env     = "staging"
    service = "ws-wxv"
  }

  throughput = "0"
  type       = "gp2"
}
