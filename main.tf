
resource azapi_resource apim {
  type      = "Microsoft.ApiManagement/service@2021-12-01-preview"
  name      = "apim-${var.appName}${var.suffix != "" ? "-${var.suffix}" : ""}"
  parent_id = data.azurerm_resource_group.rg.id
  location  = data.azurerm_resource_group.rg.location

  identity {
    type    = "SystemAssigned"
  }

  body = jsonencode({
    sku = {
      name      = var.skuInfo.name
      capacity  = var.skuInfo["units"] != null ? var.skuInfo["units"] : 1
    }

    properties = {
      publisherName   = var.publisherInfo.name
      publisherEmail  = var.publisherInfo.email
    }
  })
}