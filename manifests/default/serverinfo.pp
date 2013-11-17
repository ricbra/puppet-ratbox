class ratbox::default::serverinfo {
  class { 'ratbox::serverinfo':
    restartpass     => 'changeme',
    diepass         => 'changeme',
    ssl_private_key => '/etc/ratbox/test.key',
    ssl_cert        => '/etc/ratbox/test.cert',
    ssl_dh_params   => '/etc/ratbox/dh.pem',
  }
}
