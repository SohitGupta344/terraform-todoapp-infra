rgs = {
  "rg1" = {
    name     = "rg-todo-sohit-01"
    location = "Central US"
    tags     = {
      environment = "dev"
      project     = "project1"
    }
    
  }
}

acr = {
  "acr1" = {
    name                = "sohitacrdev01"
    resource_group_name = "rg-todo-sohit-01"
    location            = "Central US"
    tags = {
      environment = "dev"
      project     = "project1"
    }
  }
}

aks = {
  "aks1" = {
    name       = "sohit-aksdev01"
    location   = "Central US"
    rg_name    = "rg-todo-sohit-01"
    dns_prefix = "devaks1"

    default_node_pool = {
      name       = "default"
      node_count = 1
      vm_size    = "Standard_D4s_v3"
    }

    tags = {
      environment = "dev"
      project     = "project1"
    }
  }
}

sql_servers = {
  "sqlserver1" = {
    sql_server_name = "sohit-devsqlserver1"
    rg_name         = "rg-todo-sohit-01"
    location        = "Central US"
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
    sql_db_name     = "sohit-devsqldb1"
    max_size_gb     = 10
    sql_server_name = "sohit-devsqlserver1"
    rg_name         = "rg-todo-sohit-01"
    tags = {
      environment = "dev"
      project     = "project1"
    }
  }
}