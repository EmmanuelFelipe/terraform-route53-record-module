variable "domain_name" {
  type        = string
  description = "The domain name for the new URL"
}

variable "cluster_identifier_prefix" {
  type        = string
  description = "The prefix for the new URL"
}

variable "app_name" {
  type        = string
  description = "The name of the record  on Route53"
}