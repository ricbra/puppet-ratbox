class ratbox::service (
  $conffile = $ratbox::conffile
) {
  concat::fragment { 'service conf':
    target  => $conffile,
    content => template('ratbox/service.erb'),
    order   => '050',
  }
}
