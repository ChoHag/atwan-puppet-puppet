class puppet::master inherits puppet {
  case $::osfamily {
    debian: {
      $puppetmaster_package = 'puppetmaster'
    }

    redhat: {
      $puppetmaster_package = 'puppet-server'
    }
  }

  file {
    '/etc/puppet/fileserver.conf':
      ensure  => file,
      content => '',
  }

  -> package {
    $puppetmaster_package:
      ensure => installed,
  }

  -> service {
    'puppetmaster':
      enable  => true,
      ensure  => running,
  }
}
