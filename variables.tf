variable "os_login_ssh_public_keys" {
  description = <<EOT
Map of os_login_ssh_public_keys, attributes below
Required:
    - key
    - user
Optional:
    - deletion_policy
    - expiration_time_usec
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    key                  = string
    user                 = string
    deletion_policy      = optional(string)
    expiration_time_usec = optional(string)
    project              = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

