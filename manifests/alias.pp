define ratbox::alias (
  $target,
  $conffile = $ratbox::conffile
) {
  concat::fragment { "$name alias":
    target  => $conffile,
    content => template('ratbox/alias.erb'),
    order   => '110',
  }
}
