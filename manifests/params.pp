class ratbox::params {
  # Location of the conf file based on operating system
  case $osfamily {
    'Debian': {
      $conffile = '/etc/ircd-ratbox/ircd.conf'
      $package = 'ircd-ratbox'
    }
    default: {
      fail("\$osfamily ${osfamily} is not supported by the ratbox module")
    }
  }
}
