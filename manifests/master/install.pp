class puppet::master::install {
  package { $puppet::master::package:
    ensure => installed,
  }
}
