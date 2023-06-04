# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include stfs_windefender
class stfs_windefender {
  #notify {"Key ${registry_keys} and ${registry}":}
  include stfs_windefender::windefender
}
