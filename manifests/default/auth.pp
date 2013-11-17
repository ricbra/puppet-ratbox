class ratbox::default::auth {
  ratbox::auth { 'opers':
    order     => '1',
    users     => [
      '*@127.0.0.0/8',
      '*@fc88::*',
    ],
    password  => 'letmein',
    spoof     => 'I.still.hate.packets',
    flags     => [
      'kline_exempt',
      'exceed_limit',
    ],
    authclass => 'opers',
  }
  ratbox::auth { 'default':
    users     => '*@*',
    authclass => 'users',
  }
}
