class puppet::master::service {
  service { 'puppetmaster':
    enable  => true,
    ensure  => running,
  }
}
