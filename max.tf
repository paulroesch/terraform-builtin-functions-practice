locals {
  max_var = [15, 3, 5, 6, 2, 8, 20]
}

output "max_value" {
  value = max(local.max_var...)
}
