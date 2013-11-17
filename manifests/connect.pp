define ratbox::connect (
  $ip,
  $send_password,
  $accept_password,
  $port,
  $ipv6     = false,
  $hub_mask = '*',
  $class    = 'server',
  $flags    = [
    'ssl',
    'topicburst',
  ],
  $conffile = $ratbox::conffile
) {
  $connectclass = $class

  concat::fragment { "${name} operator":
    target  => $conffile,
    content => template("ratbox/connect.erb"),
    order   => '040',
  }
}
