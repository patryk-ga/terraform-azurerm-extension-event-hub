variable "resource_group_name" {
  description = "The name of the resource group in which the Event Hub should be created."
  type        = string
}

variable "event_hub_namespace_name" {
  description = "The name of the Event Hub namespace."
  type        = string
}

variable "name" {
  description = "The name of the Event Hub."
  type        = string
}

variable "message_retention" {
  description = "The message retention period for the Event Hub."
  type        = number
}

variable "partition_count" {
  description = "The number of partitions for the Event Hub."
  type        = number
}
