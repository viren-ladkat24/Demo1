variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "bucket_name" {
  
}

variable "versioning" {
  description = "Enable versioning"
  type        = bool
  default     = false
}

variable "force_destroy" {
  description = "Allow bucket delete with objects inside"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to apply"
  type        = map(string)
  default     = {}
}
