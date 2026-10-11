resource "google_os_login_ssh_public_key" "os_login_ssh_public_keys" {
  for_each = var.os_login_ssh_public_keys

  key                  = each.value.key
  user                 = each.value.user
  deletion_policy      = each.value.deletion_policy
  expiration_time_usec = each.value.expiration_time_usec
  project              = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

