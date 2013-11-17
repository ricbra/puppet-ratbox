class ratbox::cluster (
  $clustername = '*',
  $flags       = [
    'kline',
    'tkline',
    'unkline',
    'xline',
    'txline',
    'unxline',
    'resv',
    'tresv',
    'unresv',
  ],
  $conffile    = $ratbox::conffile
) {
  concat::fragment { 'cluster conf':
    target  => $conffile,
    content => template('ratbox/cluster.erb'),
    order   => '060',
  }
}
