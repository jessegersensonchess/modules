output "output" {
  value = module.efs.filesystem
}

output "encrypted" {
  value = module.efs.filesystem.encrypted
}