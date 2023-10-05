locals {
  tr_component_postgres = {
    ledgerdb = {
      family  = "postgres"
      version = "11.20"
    }
  }
  tr_component_service_private = {}
  tr_component_service_web = {
    banking_app = {
      cpu      = 1024
      memory   = 2048
      path     = "/"
      port     = 3000
      protocol = "tcp"
    }
  }
}
