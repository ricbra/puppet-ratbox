define ratbox::privset (
  $extends  = false,
  $privs    = [],
  $order    = '99',
  $conffile = $ratbox::conffile
) {
  $privset = $name
  concat::fragment { "$privset privset":
    target  => $conffile,
    content => template('ratbox/privset.erb'),
    order   => "030-${order}",
  }
}
