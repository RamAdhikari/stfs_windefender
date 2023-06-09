# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include stfs_windefender::windefender
class stfs_windefender::windefender(
  Hash $registry_keys = {},
  Hash $registry = {},
  Array $exclusionpaths,
)
{
  #registry::value { 'Setting0':
  #key   => 'HKLM\System\CurrentControlSet\Services',
  #value => "C:\TESTEicar"
#}

#$exclusionpaths.each |String $path| {
#registry::value { "${path}":
#  key   => 'HKLM\System\CurrentControlSet\Services\Ram',
#  data  => "0",
#  type  => dword
#}
#}
if($exclusionpaths !=undef)
{
  $exclusionpaths.each| String $key, Hash $properties|{
    notify {"Key= ${key} Properties= ${$properties}":}


  } 


}


  if($registry_keys !=undef)
  {
    $registry_keys.each | String $key, Hash $properties |{
      registry_key { $key:
        * => $properties
      }

    }

  }
  
    if($registry !=undef)
  {
    $registry.each | String $key, Hash $properties |{
      registry_value { $key:
        * => $properties
      }

    }

  }
}
