class puppet::config {
  file { "/etc/puppet":
    ensure => directory;
  }

  -> file { "/etc/puppet/puppet.conf":
    content => template('puppet/puppet.conf.erb');
  }

  if $::osfamily == 'Debian' {
    file { "/etc/default/puppet":
      source => "puppet:///modules/puppet/debian_default_puppet",
    }
  }
}
