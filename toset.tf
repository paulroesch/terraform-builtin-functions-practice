locals {
  toset_var = toset(["b", "a", "a", "d", "c", "c"])
}

output "toset" {
  value       = local.toset_var
  description = "toset orders items and make them unique inside the list"
}
