provider "azurerm" {

 subscription_id = "${var.subscription_id}"
  tenant_id       = "${var.tenant_id}"
  client_id       =  "${var.client_id}"
  client_secret   =  "${var.client_secret}"
 
  
  }

resource "azurerm_resource_group" "pwc-test" {

 name     = "${var.resource_group_name}"
 location = "${var.location}"

}

 


resource "azurerm_snapshot" "pwc-test" {

 
  #count = length(var.source_uri)
 
  name  = "test-snapshot3"

  location            = "eastus"

  resource_group_name = "pwc-test"

  create_option       = "Copy"

  source_uri          =  "${var.source_uri}"
}


