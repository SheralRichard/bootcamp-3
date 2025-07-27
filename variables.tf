variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "vnet_name" {
  type        = string
  description = "Virtual Network name"
}

variable "vnet_address_space" {
  type        = string
  description = "CIDR block for VNet"
}

variable "subnet_name" {
  type        = string
  description = "Subnet name"
}

variable "subnet_prefix" {
  type        = string
  description = "CIDR block for Subnet"
}
variable "nic_name" {
  type        = string
  description = "Network Interface name"
}
variable "vm_name" {
  type        = string
  description = "Name of the virtual machine"
}

variable "vm_size" {
  type        = string
  description = "Size of the virtual machine"
}

variable "admin_username" {
  type        = string
  description = "Admin username for the VM"
}

variable "admin_password" {
  type        = string
  description = "Admin password for the VM"
  sensitive   = true
}
variable "storage_account_name" {
  type        = string
  description = "Name of the Storage Account"
}
