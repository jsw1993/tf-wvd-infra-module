variable "wvd-hostpool-name" {
  description = "Name of WVD Host Pool"
  default     = "WVDHostPool"
  type        = string
}

variable "wvd-hostpool-friendly-name" {
  description = "Frieendly ame of WVD Host Pool"
  default     = "WVD Host Pool"
  type        = string
}

variable "wvd-hostpool-description" {
  description = "WVD Host Pool Description"
  default     = "WVD Host Pool"
  type        = string
}

variable "wvd-hostpool-max-sessions" {
  description = "Maxinum sessions for host pool"
  default     = 10
  type        = number
}


variable "wvd-defaultappgroup-name" {
  description = "WVD Default App Group Name"
  default     = "WVDAppGroup"
  type        = string
}

variable "wvd-defaultappgroup-friendly-name" {
  description = "WVD Default App Group Friendly Name"
  default     = "WVD App Group"
  type        = string
}

variable "wvd-defaultappgroup-description" {
  description = "WVD Default App Group Description"
  default     = "WVD Default App Group for Desktop Access"
  type        = string
}

variable "wvd-workspace-name" {
  description = "WVD Workspace Name"
  default     = "WVDWorkspace"
  type        = string
}

variable "wvd-workspace-friendly-name" {
  description = "WVD Workspace Friendly Name"
  default     = "WVD Workspace"
  type        = string
}

variable "wvd-workspace-description" {
  description = "WVD Workspace Description"
  default     = "WVD Workspace"
  type        = string
}

variable "tags" {
  default     = {}
  description = "Map of tags"
  type        = map(any)
}

variable "hostpool-custom_rdp_properties" {
  default     = ""
  description = "custom RDP properties for host pool"
  type        = string
}