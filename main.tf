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
 
  #name  = "test-snapshot3_${count.index}"
 
   #count = "2"
 
 dynamic "setting" {
    for_each = var.source_uri
    content {
      #namespace = "aws:elasticbeanstalk:application:environment"
      name      = setting.key
      value     = setting.value
     
     
  location            = "${azurerm_resource_group.pwc-test.location}"
  
  resource_group_name = "${azurerm_resource_group.pwc-test.name}"

  create_option       = "Copy"

  #source_uri          =  var.source_uri[count.index]
 source_uri          =  var.value
    }
  }
 
      key   = "${element(split(",", var.source_uri), 1)}"

  location            = "${azurerm_resource_group.pwc-test.location}"
  
  resource_group_name = "${azurerm_resource_group.pwc-test.name}"

  create_option       = "Copy"

  #source_uri          =  var.source_uri[count.index]
 source_uri          =  var.key

 
}
