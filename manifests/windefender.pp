# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include stfs_windefender::windefender
class stfs_windefender::windefender(
  Hash $registry_keys = {},
  Hash $registry = {},
  Hash $exclusionpaths = {},
)
{
  #registry::value { 'Setting0':
  #key   => 'HKLM\System\CurrentControlSet\Services',
  #value => "C:\TESTEicar"
#}
if($exclusionpaths !=undef)
  {
    $exclusionpaths.each | String $key, Hash $properties |{
      registry_key { $key:
        * => $properties
      }

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
