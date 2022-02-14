# @summary A short summary of the purpose of this class
#
# we look up pkcs7 encrypted values here
#
# @example
#   include profile::pkcs_sieben::lookup
class profile::pkcs_sieben::lookup(
  Sensitive $sensitive_parameter_lookup,
  String[1] $parameter_lookup = 'No PKCS7 Secret Found',
){
  notify { "testing PKCS7: ${parameter_lookup}":}
  notify { "testing sensitive PKCS7: ${sensitive_parameter_lookup}":}

  $unwrapped_sensitive_parameter_lookup = unwrap($sensitive_parameter_lookup)
  notify { "testing unwrapped sensitive PKCS7: ${unwrapped_sensitive_parameter_lookup}":}
}
