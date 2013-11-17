define ratbox::exempt (
  $ip       = '127.0.0.1',
  $conffile = $ratbox::conffile
) {
  concat::fragment { "$name exempt":
    target  => $conffile,
    content => template('ratbox/exempt.erb'),
    order   => '075',
  }
}
