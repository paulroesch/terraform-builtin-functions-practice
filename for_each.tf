locals {
  map1 = {
    "map1_item1_key" = "map1item1_val"
    "map1_item2_key" = "map1item2_val"
    "map1_item3_key" = "map1item3_val"
  }
  map2 = {
    "nested_map1" = {
      "nestedmap_item1_key" = "nestedmap1_item1_val"
      "nestedmap_item2_key" = "nestedmap1_item2_val"
      "nestedmap_item3_key" = "nestedmap1_item3_val"
    },
    "nested_map2" = {
      "nestedmap_item1_key" = "nestedmap2_item1_val"
      "nestedmap_item2_key" = "nestedmap2_item2_val"
      "nestedmap_item3_key" = "nestedmap2_item2_val"
    }
  }
}

# using null_resource here to navigate through maps
resource "null_resource" "map1" {
  for_each = local.map1
  triggers = {
    key   = each.key
    value = each.value
  }
}

resource "null_resource" "map2" {
  for_each = local.map2
  triggers = {
    key_of_map2 = each.key
    value1      = each.value.nestedmap_item1_key
    value2      = each.value.nestedmap_item2_key
    value3      = each.value.nestedmap_item2_key
  }
}

# listing values obtained by null_resource
output "list_map1_items" {
  value = null_resource.map1
}

output "list_map2_items" {
  value = null_resource.map2
}
