class puppet(
  $logdir         = params_lookup('logdir'),
  $vardir         = params_lookup('vardir'),
  $ssldir         = params_lookup('ssldir'),
  $rundir         = params_lookup('rundir'),
  $factpath       = params_lookup('factpath'),
  $templatedir    = params_lookup('templatedir'),
  $manifestdir    = params_lookup('manifestdir'),
  $modulepath     = params_lookup('modulepath'),
  $node_terminus  = params_lookup('node_terminus'),
  $external_nodes = params_lookup('external_nodes'),
) inherits puppet::params {
     class { 'puppet::install': }
  -> class { 'puppet::config': }
  -> class { 'puppet::service': }
  -> Class['puppet']
}
