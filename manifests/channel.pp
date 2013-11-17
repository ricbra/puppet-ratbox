define ratbox::channel (
  $value,
  $conffile = $ratbox::conffile
) {
  concat::fragment { "${name} channel":
    target  => $conffile,
    content => template('ratbox/channel.erb'),
    order   => '080',
  }
  if ! defined(Concat::Fragment['channel open']) {
    concat::fragment { 'channel open':
      target  => $conffile,
      content => "channel {\n",
      order   => '079',
    }
  }
  if ! defined(Concat::Fragment['channel close']) {
    concat::fragment { 'channel close':
      target  => $conffile,
      content => "};\n",
      order   => '081',
    }
  }
}
