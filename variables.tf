variable "subscription_id" {}
variable "tenant_id" {}

variable "client_id" {}

variable "client_secret" {}

variable "os_disk" {
  description = "source_uri of VM_OS Disk"
  type        = list(string)
  default     = ["/subscriptions/a8a59231-c575-45fb-8e16-2b4c5b6a2271/resourceGroups/PWC-TEST/providers/Microsoft.Compute/disks/WindowsVM_OsDisk_1_180acba49f3b44b0ba61e36fd78e4d18", "/subscriptions/a8a59231-c575-45fb-8e16-2b4c5b6a2271/resourceGroups/pwc-test/providers/Microsoft.Compute/disks/UbuntuVM_OsDisk_1_f08a771634bc4a00812bc581bbbed97d"]
}
