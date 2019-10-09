variable "subscription_id" {}
variable "tenant_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "resource_group_name" {}
variable "location" {}
variable "snapshot_name" {}
variable "source_uri" {
  description = "source_uri of VM_OS Disk"
  type        = list(string)
  
}
variable "count1" {}
