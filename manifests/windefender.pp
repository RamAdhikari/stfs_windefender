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
  $all_keys=deep_merge($registry_keys)
  $all_registry=deep_merge($registry)
  if($all_keys !=undef)
  {
    $all_keys.each | String $key, Hash $properties |{
      notify {"Test ${all_keys} ID defined":}
      registry_key { $key:
        * => $properties
      }

    }

  }
  
    if($all_registry !=undef)
  {
    $all_registry.each | String $key, Hash $properties |{
      notify {"Test ${all_registry} ID defined":}
      registry_value { $key:
        * => $properties
      }

    }

  }

}
