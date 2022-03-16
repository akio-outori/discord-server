module server {
  source   = "./modules/discord-server"
  name     = "Ohtori-test-server"  
  owner_id = var.owner_id
}

module admins {
  source    = "./modules/discord-admin"
  server_id = module.server.server.id
  admins    = var.admins
}
