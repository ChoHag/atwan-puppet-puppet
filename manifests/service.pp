class puppet::service {
  service { "puppet":
    enable => true,
    ensure => running,
  }
}
