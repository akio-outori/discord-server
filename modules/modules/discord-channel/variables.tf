variable text_enabled {
  description = "Whether to create a text channel"
  type        = bool
  default     = false
}

variable voice_enabled {
  description = "Whether to create a voice channel"
  type        = bool
  default     = false
}

variable name {
  description = "Name of the channel"
  type        = string
}

variable server_id {
  description = "ID of the server to create channels in"
  type        = string
}

variable topic {
  description = "Topic of the channel for text channels"
  type        = string
  default     = null
}

variable nsfw {
  description = "Whether to mark nsfw"
  type        = bool
  default     = false
}

variable text_category {
  description = "Category to place the text channel(s) in"
  type        = string
  default     = "Text Channels"
}

variable voice_category {
  description = "Category to place the voice channel(s) in"
  type        = string
  default     = "Voice Channels"
}

variable sync_perms_with_category {
  description = "Whether to sync permissions with a channel category, this is set to true by default"
  type        = bool
  default     = true
}

variable bitrate {
  description = "Bitrate of the voice channel"
  type        = number
  default     = 64000
}

variable user_limit {
  description = "User limit for voice channels"
  type        = number
  default     = null
}
