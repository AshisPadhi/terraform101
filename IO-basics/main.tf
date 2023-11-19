# 1
# locals {
#   map_var = {
#     test = "akp"
#   }
#   try1 = try(local.map_var.test2, "fallback")
# }

# output "try1" {
#   value = local.try1
# }
# 
#
#  2
# locals {
#   map_var = {
#     test = "akp"
#     test2 = "AKP"
#   }
#   try1 = try(local.map_var.test2, "fallback")
# }

# output "test" {
#     value = local.map_var.test
# }

# output "try1" {
#     value = local.try1
# }
#
#
# 3
# locals {
#   key_value_map = {
#     "key1" = "AKP"
#     "key2" = "DevOps"
#   }
#   key_list = keys(local.key_value_map)
#   value_list = values(local.key_value_map)
# }

# output "key_list" {
#     value = local.key_list
# }

# output "value_list" {
#     value = local.value_list
# }
#
#
#  4
# locals {
#   testfile = file("./testfile.txt")
# }

# output "testfile" {
#     value = local.testfile
# }
#
#
#  5
# locals {
#   testfile = templatefile("./testfile.txt", {"variable_to_change" : "working"})
# }

# output "testfile" {
#     value = local.testfile
# }
#
#
#
#  6 
# locals {
#   jsondata = jsondecode(file("./data.json"))
# }

# output "jsondata" {
#     value = local.jsondata
# }
#
#
# 7 
locals {
  jsondata = jsondecode(file("./data.json"))
}

output "jsondata" {
  value = local.jsondata
}

resource "null_resource" "write_to_json" {
    triggers = {
        encode_data = jsonencode(local.jsondata)
    }
    provisioner "local-exec" {
        command = <<-EOT
          echo '${jsonencode(local.jsondata)}' > output.json
        EOT
    }
}



