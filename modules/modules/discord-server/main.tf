// Create the server
resource discord_server server {
    name                          = var.name
    region                        = var.region
    verification_level            = var.verification_level
    explicit_content_filter       = var.explicit_content_filter
    default_message_notifications = var.default_message_notifications
    afk_channel_id                = var.afk_channel_id
    afk_timeout                   = var.afk_timeout
    owner_id                      = var.owner_id
}

// Create an initial General channel
resource discord_text_channel text_channel {
  name      = "general"
  server_id = discord_server.server.id
  position  = 0

  sync_perms_with_category = false
}

// Create an invitation url to this initial channel
resource discord_invite invite {
  channel_id = discord_text_channel.text_channel.id
  max_age    = 0
}
