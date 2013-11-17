class ratbox::admin (
  $adminname    = "Lazy Admin",
  $description  = "IRC network admin",
  $email        = "admin@127.0.0.1",
  $conffile     = $ratbox::conffile
) {
  concat::fragment { 'admin conf':
    target  => $conffile,
    content => template('ratbox/admin.erb'),
    order   => '004',
  }
}
