variable "subscription_id" {}
variable "tenant_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "resource_group_name" {}
variable "location" {}

variable "source_uri" {
  description = "source_uri of VM_OS Disk"
  type        = list(string)
  #default     = ["/subscriptions/a8a59231-c575-45fb-8e16-2b4c5b6a2271/resourceGroups/PWC-TEST/providers/Microsoft.Compute/disks/VM1_OsDisk_1_364ab25d96064260b6e89bb2ace19623", "/subscriptions/a8a59231-c575-45fb-8e16-2b4c5b6a2271/resourceGroups/PWC-TEST/providers/Microsoft.Compute/disks/Vm2_disk1_d1269e293e37420f8c67c2c306e092e9"]
}

