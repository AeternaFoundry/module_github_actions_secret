resource "github_actions_secret" "actions_secrets" {
  for_each = var.actions_secrets

  repository       = each.value.repository
  secret_name      = each.value.secret_name
  destroy_on_drift = each.value.destroy_on_drift
  encrypted_value  = each.value.encrypted_value
  key_id           = each.value.key_id
  plaintext_value  = each.value.plaintext_value
  value            = each.value.value
  value_encrypted  = each.value.value_encrypted
}

