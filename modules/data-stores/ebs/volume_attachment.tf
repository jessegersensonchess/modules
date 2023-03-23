resource "aws_volume_attachment" "tfer--i-08e58b7c8342ad116-003A--002F-dev-002F-sdf" {
  device_name = "/dev/sdf"
  instance_id = "i-08e58b7c8342ad116"
  volume_id   = "vol-0404ead11c9e01f93"
}
