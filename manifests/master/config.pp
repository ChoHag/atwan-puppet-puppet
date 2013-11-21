class puppet::master::config {
  file { '/etc/puppet/fileserver.conf':
    ensure  => file,
    content => '',
  }
}
