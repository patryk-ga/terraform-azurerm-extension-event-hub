resource "azurerm_eventhub" "eventhub" {
  namespace_name      = var.event_hub_namespace_name
  resource_group_name = var.resource_group_name

  name              = var.name
  message_retention = var.message_retention
  partition_count   = var.partition_count
}

resource "azurerm_role_assignment" "sp_event_hub_uac" {
  principal_id         = var.service_principal_object_id
  role_definition_name = "User Access Administrator"
  scope                = azurerm_eventhub.eventhub.id
}

resource "azurerm_role_assignment" "owner_event_hub_group_data_owner" {
  principal_id         = var.owner_group_id
  role_definition_name = "Azure Event Hubs Data Owner"
  scope                = azurerm_eventhub.eventhub.id
}

resource "azurerm_role_assignment" "owner_group_event_hub_owner" {
  principal_id         = var.owner_group_id
  role_definition_name = "Owner"
  scope                = azurerm_eventhub.eventhub.id
}

resource "azurerm_role_assignment" "contributor_group_event_hub_contributor" {
  principal_id         = var.contributor_group_id
  role_definition_name = "Contributor"
  scope                = azurerm_eventhub.eventhub.id
}

resource "azurerm_role_assignment" "reader_group_event_hub_reader" {
  principal_id         = var.reader_group_id
  role_definition_name = "Reader"
  scope                = azurerm_eventhub.eventhub.id
}
