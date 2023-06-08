variable "name" {
  type        = string
  description = "The base name of instance profile resources."
}

variable "create_assume_role_policy" {
  type        = bool
  description = "Determines if a new assume role policy is created or if an existing one is passed in."
  default     = false
}

variable "assume_role_policy_json" {
  type        = string
  description = "The JSON of an existing assume role policy, if a new assume role policy will not be created."
  default     = ""
}

variable "policies" {
  type = list(object({
    name = string
    arn  = string
  }))
  description = "A list of policy objects with policy name and ARN."
  default     = []
}
