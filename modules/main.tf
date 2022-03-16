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

module categories {
  for_each  = toset([ "Text Channels", "Voice Channels" ])
  source    = "./modules/discord-category"
  name      = each.value
  server_id = module.server.server.id
}

module text_channels {
  for_each      = toset([ "ff14", "valheim" ])
  source        = "./modules/discord-channel"
  text_enabled  = true
  name          = each.value
  server_id     = module.server.server.id
  text_category = module.categories["Text Channels"].category_channel.id
}

module voice_channels {
  for_each       = toset([ "ff14", "valheim" ])
  source         = "./modules/discord-channel"
  voice_enabled  = true
  name           = each.value
  server_id      = module.server.server.id
  voice_category = module.categories["Voice Channels"].category_channel.id
}
