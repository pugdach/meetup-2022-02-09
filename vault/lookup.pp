# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::vault::lookup
class profile::vault::lookup (
  $vault_parameter_lookup = 'PARAMETER No Vault Secret Found',
){

  $vault_explicit_lookup = lookup({'name' => 'vault_notify', 'default_value' => 'LOOKUP No Vault Secret Found'})
  notify { "testing Vault: ${vault_explicit_lookup}":}
  notify { "testing Vault: ${vault_parameter_lookup}":}
}
