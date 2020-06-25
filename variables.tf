variable "resource_group_name" {
  description = "The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created."
  type        = string
}


variable "name" {
  description = "Specifies the name of the Container Registry. Changing this forces a new resource to be created."
  type        = string
}

variable "georeplication_locations" {
  description = "A list of Azure locations where the container registry should be geo-replicated."
  type        = list(string)
  default     = null
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = null
}

variable "vnet_subnet_ids" {
  description = "A list of subnet ids to allow access to ACR"
  default     = []
  type        = list(string)
}

variable "sku" {
  description = "the SKU name of the container registry. Possible values are Basic, Standard and Premium"
  type        = string
  default     = "Standard"
}
