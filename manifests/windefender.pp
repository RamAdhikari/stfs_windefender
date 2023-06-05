# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include stfs_windefender::windefender
class stfs_windefender::windefender(
  Hash $registry_keys = {},
  Hash $registry = {},
)
{
  registry::value { 'Setting0':
  key   => 'HKLM:\SOFTWARE\Microsoft\Windows Defender\Exclusions\Paths',
  value => "C:\TESTEicar\"
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
