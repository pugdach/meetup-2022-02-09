# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::gpg::lookup
class profile::gpg::lookup (
  String[1] $parameter_lookup = 'No GPG Secret Found',
){
  notify { "testing GPG: ${parameter_lookup}":}
}
