variable server_id {
  description = "ID of the discord server to create roles in"
  type        = string
}

variable admins {
  description = "A list of discord user IDs that should be added as admins"
  type        = list(string)
}
