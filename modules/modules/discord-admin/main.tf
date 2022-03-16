resource discord_role admin {
    server_id   = var.server_id
    name        = "Administrator"
    permissions = 8
    #color       = 4166b6
    hoist       = true
    mentionable = true
    #position    = 5
}

resource discord_member_roles admin {
  for_each  = toset(var.admins)
  user_id   = each.value
  server_id = var.server_id

  role {
    role_id = discord_role.admin.id
  }
}
