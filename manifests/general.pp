define ratbox::general (
  $value,
  $quoted   = false,
  $conffile = $ratbox::conffile
) {
  concat::fragment { "${name} general":
    target  => $conffile,
    content => template('ratbox/general.erb'),
    order   => '120',
  }
  if ! defined(Concat::Fragment['general open']) {
    concat::fragment { 'general open':
      target  => $conffile,
      content => "general {\n",
      order   => '119',
    }
  }
  if ! defined(Concat::Fragment['general close']) {
    concat::fragment { 'general close':
      target  => $conffile,
      content => "};\n",
      order   => '121',
    }
  }
}
