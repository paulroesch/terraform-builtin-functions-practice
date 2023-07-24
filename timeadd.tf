locals {
  timeadd_var = timestamp()
}

output "timeadd_output" {
  value = timeadd(local.timeadd_var, "24h")
}
