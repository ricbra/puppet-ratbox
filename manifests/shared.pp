define ratbox::shared (
  $oper     = '*@*',
  $server   = '*',
  $flags    = [
    'all',
    'rehash',
  ],
  $conffile = $ratbox::conffile
) {
  concat::fragment { "$name shared":
    target  => $conffile,
    content => template('ratbox/shared.erb'),
    order   => '070',
  }
}
