resource discord_text_channel text_channel {
  count     = var.text_enabled == true ? 1 : 0

  name      = var.name
  server_id = var.server_id
  topic     = var.topic
  nsfw      = var.nsfw
  category  = var.text_category

  sync_perms_with_category = var.sync_perms_with_category
}

resource discord_voice_channel voice_channel {
  count      = var.voice_enabled == true ? 1 : 0

  name       = var.name
  server_id  = var.server_id
  bitrate    = var.bitrate
  user_limit = var.user_limit
  category   = var.voice_category

  sync_perms_with_category = var.sync_perms_with_category
}
