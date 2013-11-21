class puppet::params {
  $logdir = '/var/log/puppet'
  $vardir = '/var/lib/puppet'
  $ssldir = '/var/lib/puppet/ssl'
  $rundir = '/var/run/puppet'
  $factpath = '$vardir/lib/facter'
  $templatedir = '$confdir/templates'

  $manifestdir = 'UNDEFINED'
  $modulepath = 'UNDEFINED'

  $node_terminus = 'UNDEFINED'
  $external_nodes = 'UNDEFINED'

  case $::osfamily {
    debian: {
      $master_package = 'puppetmaster'
    }

    redhat: {
      $master_package = 'puppet-server'
    }
  }
}
