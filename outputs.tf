output "os_login_ssh_public_keys_id" {
  description = "Map of id values across all os_login_ssh_public_keys, keyed the same as var.os_login_ssh_public_keys except keys with no id are omitted"
  value       = { for k, v in google_os_login_ssh_public_key.os_login_ssh_public_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "os_login_ssh_public_keys_deletion_policy" {
  description = "Map of deletion_policy values across all os_login_ssh_public_keys, keyed the same as var.os_login_ssh_public_keys except keys with no deletion_policy are omitted"
  value       = { for k, v in google_os_login_ssh_public_key.os_login_ssh_public_keys : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "os_login_ssh_public_keys_expiration_time_usec" {
  description = "Map of expiration_time_usec values across all os_login_ssh_public_keys, keyed the same as var.os_login_ssh_public_keys except keys with no expiration_time_usec are omitted"
  value       = { for k, v in google_os_login_ssh_public_key.os_login_ssh_public_keys : k => v.expiration_time_usec if v.expiration_time_usec != null && length(v.expiration_time_usec) > 0 }
}
output "os_login_ssh_public_keys_fingerprint" {
  description = "Map of fingerprint values across all os_login_ssh_public_keys, keyed the same as var.os_login_ssh_public_keys except keys with no fingerprint are omitted"
  value       = { for k, v in google_os_login_ssh_public_key.os_login_ssh_public_keys : k => v.fingerprint if v.fingerprint != null && length(v.fingerprint) > 0 }
}
output "os_login_ssh_public_keys_key" {
  description = "Map of key values across all os_login_ssh_public_keys, keyed the same as var.os_login_ssh_public_keys except keys with no key are omitted"
  value       = { for k, v in google_os_login_ssh_public_key.os_login_ssh_public_keys : k => v.key if v.key != null && length(v.key) > 0 }
}
output "os_login_ssh_public_keys_project" {
  description = "Map of project values across all os_login_ssh_public_keys, keyed the same as var.os_login_ssh_public_keys except keys with no project are omitted"
  value       = { for k, v in google_os_login_ssh_public_key.os_login_ssh_public_keys : k => v.project if v.project != null && length(v.project) > 0 }
}
output "os_login_ssh_public_keys_user" {
  description = "Map of user values across all os_login_ssh_public_keys, keyed the same as var.os_login_ssh_public_keys except keys with no user are omitted"
  value       = { for k, v in google_os_login_ssh_public_key.os_login_ssh_public_keys : k => v.user if v.user != null && length(v.user) > 0 }
}

