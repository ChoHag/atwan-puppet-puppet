class puppet {
  if $::osfamily == 'Debian' {
    file { "/etc/default/puppet":
      source => "puppet:///modules/puppet/debian_default_puppet",
      before => Service["puppet"],
    }
  }

  file {
    "/etc/puppet":
      ensure => directory;
    "/etc/puppet/puppet.conf":
      # For now just leave it alone.
      ensure => present,
  }

  -> package { "puppet":
    ensure => installed,
  }

  -> service { "puppet":
    enable => true,
    ensure => running,
  }
}
