locals {
  strcontains_var = "The sunshine is over the sky."
}

output "strcontains_output" {
  value = strcontains(local.strcontains_var, "sun")
}
