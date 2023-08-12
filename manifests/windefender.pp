# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include stfs_windefender::windefender
class stfs_windefender::windefender(
  Hash $registry_keys = {},
  Hash $registry = {},
  Hash $exclusionpaths,
)
{
  #registry::value { 'Setting0':
  #key   => 'HKLM\System\CurrentControlSet\Services',
  #value => "C:\TESTEicar"
#} Test Test
#Test merge
#$exclusionpaths.each |String $path| {
#registry::value { "${path}":
#  key   => 'HKLM\System\CurrentControlSet\Services\Ram',
#  data  => "0",
#  type  => dword
#}
#}

}
