rgs = {
  "rg1" = {
    name     = "dev-rg1"
    location = "East US"
    tags     = {
      environment = "dev"
      project     = "project1"
    }
    
  }
}

acr = {
  "acr1" = {
    name                = "devacr1"
    resource_group_name = "dev-rg1"
    location            = "East US"
    tags = {
      environment = "dev"
      project     = "project1"
    }
  }
}

aks = {
  "aks1" = {
    name       = "dev-aks1"
    location   = "East US"
    rg_name    = "dev-rg1"
    dns_prefix = "devaks1"

    default_node_pool = {
      name       = "default"
      node_count = 1
      vm_size    = "Standard_B1s"
    }

    tags = {
      environment = "dev"
      project     = "project1"
    }
  }
}

sql_servers = {
  "sqlserver1" = {
    sql_server_name = "devsqlserver1"
    rg_name         = "dev-rg1"
    location        = "East US"
    admin_username  = "sqladminuser"
    admin_password  = "P@ssw0rd1234!"
    tags = {
      environment = "dev"
      project     = "project1"
    }
  }
}

sql_databases = {
  "sqldb1" = {
    sql_db_name     = "devsqldb1"
    max_size_gb     = 10
    sql_server_name = "devsqlserver1"
    rg_name         = "dev-rg1"
    tags = {
      environment = "dev"
      project     = "project1"
    }
  }
}