locals {
  min_var = [15, 3, 5, 6, 2, 8, 20]
}

output "min_value" {
  value = min(local.min_var...)
}
