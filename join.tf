locals {
  a = ["Bright", "sun", "rays"]
  b = ["on", "the", "sandy", "beach."]
}

output "join" {
  value = join(" ", local.a, local.b)
}
