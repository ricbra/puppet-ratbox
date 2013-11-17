# Class: ratbox
#
# This module manages ratbox and its config
#
# Actions:
#
# Requires:
#  ripienaar-concat module
#
class ratbox (
  $conffile = $ratbox::params::conffile,
  $package = $ratbox::params::package
) inherits ratbox::params {

  package { $package:
    ensure => present,
  }
  service { 'ircd-ratbox':
    ensure  => running,
    enable  => true,
    hasrestart => true,
    hasstatus => false
  }
  exec { 'eanble-ircd-service':
    command => "sed -i 's/ENABLED=0/ENABLED=1/' /etc/init.d/ircd-ratbox",
    onlyif => 'grep -c ENABLED=0 /etc/init.d/ircd-ratbox',
    notify => Service['ircd-ratbox'],
    require => Package[$package],
  }

  include concat::setup
  concat { $conffile:
    owner   => "root",
    group   => "irc",
    mode    => "440",
    require => Package[$package],
    notify  => Service['ircd-ratbox'],
  }
}
