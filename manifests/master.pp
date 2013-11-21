class puppet::master(
  $package = params_lookup('master_package'),
) inherits puppet::params {
  include puppet

     class { 'puppet::master::install': }
  -> class { 'puppet::master::config': }
  -> class { 'puppet::master::service': }
  -> Class['puppet::master']
  -> Class['puppet']
}
