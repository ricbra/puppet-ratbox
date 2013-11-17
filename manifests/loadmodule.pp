define ratbox::loadmodule (
  $conffile = $ratbox::conffile
) {
  concat::fragment { "$name loadmodule":
    target  => $conffile,
    content => template('ratbox/loadmodule.erb'),
    order   => '000',
  }
}
