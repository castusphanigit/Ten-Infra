variable "role_name" {
  description = "Name of the IAM Role"
  type        = string
}

variable "assume_role_policy" {
  description = "Trust policy JSON"
  type        = string
}

variable "policies" {
  description = "List of IAM policy definitions (name, description, document)"
  type = list(object({
    name        = string
    description = optional(string)
    document    = string
  }))
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {}
}