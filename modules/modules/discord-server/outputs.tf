output server {
  value = discord_server.server
}

output text_channel {
  value = discord_text_channel.text_channel
}

output invite {
  value = discord_invite.invite
}

output invite_url {
  value = "https://discord.gg/${discord_invite.invite.id}"
}
