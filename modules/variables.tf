variable discord_token {
  description = "Token to use for authentication to the discord API"
  type        = string
}

variable owner_id {
  description = "User ID of the person to transfer ownership to after creation"
  type        = string
}

variable admins {
  description = "List of discord user ids to make admins"
  type        = list(string)
}
