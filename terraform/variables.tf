variable "rgname" {
  description = "Resource Group Name"
  default     = "SonerG-GitHub"
  type        = string
}
variable "location" {
  description = "Azure location"
  default     = "UK South"
  type        = string
}
variable "sname" {
  description = "Azure Storage Account"
  type        = string
}