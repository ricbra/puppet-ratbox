define ratbox::serverhide (
  $value,
  $conffile = $ratbox::conffile
) {
  concat::fragment { "${name} serverhide":
    target  => $conffile,
    content => template('ratbox/serverhide.erb'),
    order   => '090',
  }
  if ! defined(Concat::Fragment['serverhide open']) {
    concat::fragment { 'serverhide open':
      target  => $conffile,
      content => "serverhide {\n",
      order   => '089',
    }
  }
  if ! defined(Concat::Fragment['serverhide close']) {
    concat::fragment { 'serverhide close':
      target  => $conffile,
      content => "};\n",
      order   => '091',
    }
  }
}
