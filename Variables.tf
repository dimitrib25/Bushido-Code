#CHALLENGE 1

# List variable task
variable "server_names" {
  description = "List of server names."
  type        = list(string)
  default     = ["server1", "server2", "server3"]
}

# Set variable task
variable "deployment_regions" {
  description = "List of deployment regions."
  type        = set(string)
  default     = ["us-east-1", "eu-west-1", "ap-south-1"]
}

# Map variable task
variable "app_configuration" {
  description = "Configuration settings for app."
  type        = map(string)
  default     = { 
    "environment" = "production"
    "debug_mode" = "false"
 }
}

# Object variables task
variable "server_details" {
  description = "Configuration settings for a server."
  type = object({
    name = string
    ip = string
  })
  default = {
    name = "webserver"
    ip = "192.168.1.10"
    } 
}

# Tuple variable task
variable "node_specifications" {
  description = "Specification for a node."
  type        = tuple([string, number, bool])
  default     = ["node01", 8, false]
}
