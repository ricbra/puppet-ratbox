class ratbox::log (
  $userlog    = '/var/log/ircd-ratbox/userlog',
  $fuserlog   = '/var/log/ircd-ratbox/fuserlog',
  $operlog    = '/var/log/ircd-ratbox/operlog',
  $foperlog   = '/var/log/ircd-ratbox/foperlog',
  $serverlog  = '/var/log/ircd-ratbox/serverlog',
  $klinelog   = '/var/log/ircd-ratbox/klinelog',
  $killlog    = '/var/log/ircd-ratbox/killlog',
  $operspylog = '/var/log/ircd-ratbox/operspylog',
  $ioerrorlog = '/var/log/ircd-ratbox/ioerror',
  $conffile   = $ratbox::conffile
) {
  file { [
    $userlog,
    $fuserlog,
    $operlog,
    $foperlog,
    $serverlog,
    $klinelog,
    $killlog,
    $operspylog,
    $ioerrorlog,
  ]:
    ensure => file,
    owner => irc,
    group => irc,
    mode => 0600
  }

  concat::fragment { 'log conf':
    target  => $conffile,
    content => template('ratbox/log.erb'),
    order   => '005',
  }
}
