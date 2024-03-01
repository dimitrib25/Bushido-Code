#CHALLENGE 1

# List variable task
resource "local_file" "server_names_files" {
  filename = "${path.module}/server-names.txt"
  content  = join("\n", var.server_names)
}
output "terraform_group" {
  value = "Bushido Code"
}
output "Group_Members" {
  value =<<-EOT
   Lynn Parrish
   Dimitri Burrell
   Christian Akanni
   Charlie Morse
EOT

# Set variable task
resource "local_file" "deployment_regions_file" {
  filename = "${path.module}/deployment_regions.txt"
  content  = join("\n", var.deployment_regions)
}
output "terraform_group" {
  value = "Bushido Code"
}
output "Group_Members" {
  value =<<-EOT
   Lynn Parrish
   Dimitri Burrell
   Christian Akanni
   Charlie Morse
EOT

# Map variable task
resource "local_file" "app_config_file" {
for_each = var.app_config
filename = "${path.module}/${each.key}-config.txt"
content = "${each.key}: ${each.value}"
}
output "terraform_group" {
  value = "Bushido Code"
}
output "Group_Members" {
  value =<<-EOT
   Lynn Parrish
   Dimitri Burrell
   Christian Akanni
   Charlie Morse
EOT

# Object variables task
resource "local_file" "server_details" {
  filename = "${path.module}/server-details.txt"
  content = <<-EOT
  Name: ${var.server_details.name}
  IP: ${var.server_details.ip}
  EOT
}
output "terraform_group" {
  value = "Bushido Code"
}
output "Group_Members" {
  value =<<-EOT
   Lynn Parrish
   Dimitri Burrell
   Christian Akanni
   Charlie Morse
EOT

# Tuple variable task
resource "local_file" "node_specs_file" {
  filename = "${path.module}/node-specifications.txt"
  content  = <<-EOT
  Node Name: ${var.node_specifications[0]}
  CPU Cores: ${var.node_specifications[1]}
  Master Node: ${var.node_specifications[2] ? "Yes" : "No"}
  EOT
  }
output "terraform_group" {
  value = "Bushido Code"
}
output "Group_Members" {
  value =<<-EOT
   Lynn Parrish
   Dimitri Burrell
   Christian Akanni
   Charlie Morse
EOT

#CHALLENGE 2

# List variable with count
resource "local_file" "user_role_files" {
  count    = length(var.user_roles)
  filename = "user-role-${var.user_roles[count.index]}.txt"
  content  = "Role: ${var.user_roles[count.index]}"
}
output "terraform_group" {
  value = "Bushido Code"
}
output "Group_Members" {
  value =<<-EOT
   Lynn Parrish
   Dimitri Burrell
   Christian Akanni
   Charlie Morse
EOT

# Map variable task
resource "local_file" "feature_toggles" {
for_each = var.feature_toggles
filename = "${path.module}/${each.key}.txt"
content = "${each.key}: ${each.value}"
}
output "terraform_group" {
  value = "Bushido Code"
}
output "Group_Members" {
  value =<<-EOT
   Lynn Parrish
   Dimitri Burrell
   Christian Akanni
   Charlie Morse
EOT
