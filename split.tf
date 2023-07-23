locals {
  c = "Bright sun rays on the sandy beach."
}

output "split" {
  value = split(" ",local.c)
}

