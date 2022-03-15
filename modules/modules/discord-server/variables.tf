variable name {
  description = "Name of the discord server to create"
  type        = string
}

variable region {
  description = "Region to create server in - https://www.alphr.com/change-location-discord/"
  type        = string
  default     = "us-east"
}

variable verification_level {
  description = "(Optional) Verification Level of the server"
  type        = string
  default     = null
}

variable explicit_content_filter {
  description = "(Optional) Explicit Content Filter level"
  type        = string
  default     = null
}

variable default_message_notifications {
  description = "(Optional) Default Message Notification settings (0 = all messages, 1 = mentions), defaults to 1"
  type        = number
  default     = 1
}

variable afk_channel_id {
  description = "(Optional) Channel ID for moving AFK users to"
  type        = string
  default     = null
}

variable afk_timeout {
  description = "(Optional) many seconds before moving an AFK user"
  type        = number
  default     = null
}

variable owner_id {
  description = "(Optional) Owner ID of the server (Setting this will transfer ownership)"
  type        = string
}
