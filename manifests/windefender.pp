# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include stfs_windefender::windefender
class stfs_windefender::windefender
{
  notify {"Key ${registry_keys} and ${registry}":}
  if($registry_keys !=undef)
  {
    $registry_keys.each | String $key, Hash $properties |{
      notify {"Key ${key} and ${$properties}":}
      registry_key { $key:
        * => $properties
      }

    }

  }
  
    if($registry !=undef)
  {
    $registry.each | String $key, Hash $properties |{
      notify {"Key ${key} and ${$properties}":}
      registry_value { $key:
        * => $properties
      }

    }

  }

}
