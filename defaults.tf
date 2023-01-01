variable "wvd-hostpool-name" {
  description = "Name of WVD Host Pool"
  default     = "WVDHostPool"
}

variable "wvd-hostpool-friendly-name" {
  description = "Frieendly ame of WVD Host Pool"
  default     = "WVD Host Pool"
}

variable "wvd-hostpool-description" {
  description = "WVD Host Pool Description"
  default     = "WVD Host Pool"
}

variable "wvd-hostpool-max-sessions" {
  description = "Maxinum sessions for host pool"
  default     = 10
}


variable "wvd-defaultappgroup-name" {
  description = "WVD Default App Group Name"
  default     = "WVDAppGroup"
}

variable "wvd-defaultappgroup-friendly-name" {
  description = "WVD Default App Group Friendly Name"
  default     = "WVD App Group"
}

variable "wvd-defaultappgroup-description" {
  description = "WVD Default App Group Description"
  default     = "WVD Default App Group for Desktop Access"
}

variable "wvd-workspace-name" {
  description = "WVD Workspace Name"
  default     = "WVDWorkspace"
}

variable "wvd-workspace-friendly-name" {
  description = "WVD Workspace Friendly Name"
  default     = "WVD Workspace"
}

variable "wvd-workspace-description" {
  description = "WVD Workspace Description"
  default     = "WVD Workspace"
}