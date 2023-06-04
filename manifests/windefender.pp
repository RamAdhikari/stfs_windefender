# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include stfs_windefender::windefender
class stfs_windefender::windefender (
  Hash $registry_keys = {},
  Hash $registry      = {},
)
{
  $all_keys=$registry_keys
  $all_registry=$registry

  if($all_keys !=undef)
  {
    $all_keys.each | String $key, Hash $properties |{
      notify {"Key ${key} and ${$properties}":}
      registry_key { $key:
        * => $properties
      }

    }

  }
  
    if($all_registry !=undef)
  {
    $all_registry.each | String $key, Hash $properties |{
      notify {"Key ${key} and ${$properties}":}
      registry_value { $key:
        * => $properties
      }

    }

  }

}
