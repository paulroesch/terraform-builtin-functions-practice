locals {
  replace_var = "Cats and dogs are friends."
}

output "replace_output" {
  value = replace(local.replace_var, "are", "are not")
}
