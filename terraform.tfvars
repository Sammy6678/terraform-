rg-details = { 
  Devlopment = "southindia",
  QA = "Centralindia",
Production = "west europe" }

stg-details = {
  sa1 = {
    name                     = "sanidhya4647392vats"
    resource_group_name      = "Devlopment"
    location                 = "south india"
    account_replication_type = "LRS"
  }
  sa2 = {
    name                     = "sanidhya7392kjfsakjfvats"
    resource_group_name      = "QA"
    location                 = "Centralindia"
    account_replication_type = "LRS"
  }
  sa3 = {
    name                     = "sanidhya7392kjisakjfvats"
    resource_group_name      = "Production"
    location                 = "west europe"
    account_replication_type = "LRS"
  }
}

vnet-details = {
  vnet1 = {
    name                = "Devlopment-network"
    location            = "west europe"
    resource_group_name = "Devlopment"
    address_space       = ["10.0.0.0/16"]
  }


}

subnet-details = {
  subnet1 = {
    name                 = "Devlopment-subnet"
    resource_group_name  = "Devlopment"
    virtual_network_name = "Devlopment-network"
    address_prefixes     = ["10.0.0.0/24"]

  }
  subnet2 = {
    name                 = "Production-subnet1"
    resource_group_name  = "Production"
    virtual_network_name = "Devlopment-network"
    address_prefixes     = ["10.0.1.0/24"]

  }
  subnet3 = {
    name                 = "Production-subnet2"
    resource_group_name  = "Production"
    virtual_network_name = "Devlopment-network"
    address_prefixes     = ["10.0.2.0/24"]

  }
  subnet4 = {
    name                 = "Production-subnet3"
    resource_group_name  = "Production"
    virtual_network_name = "Devlopment-network"
    address_prefixes     = ["10.0.3.0/24"]

  }
}
