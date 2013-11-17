class ratbox::default::general {
  # Quoted values
  ratbox::general { 'default_operstring':
    value  => 'is an IRC Operator',
    quoted => true,
  }
  ratbox::general { 'default_adminstring':
    value  => 'is a Server Administrator',
    quoted => true,
  }
  ratbox::general { 'kline_reason':
    value  => 'K-Lined',
    quoted => true,
  }

  # Unquoted values
  ratbox::general { 'hide_error_messages'        : value => 'opers', }
  ratbox::general { 'hide_spoof_ips'             : value => 'yes', }
  ratbox::general { 'disable_fake_channels'      : value => 'no', }
  ratbox::general { 'tkline_expire_notices'      : value => 'no', }
  ratbox::general { 'default_floodcount'         : value => '10', }
  ratbox::general { 'failed_oper_notice'         : value => 'yes', }
  ratbox::general { 'dots_in_ident'              : value => '2', }
  ratbox::general { 'min_nonwildcard'            : value => '4', }
  ratbox::general { 'min_nonwildcard_simple'     : value => '3', }
  ratbox::general { 'max_accept'                 : value => '100', }
  ratbox::general { 'max_monitor'                : value => '100', }
  ratbox::general { 'anti_nick_flood'            : value => 'yes', }
  ratbox::general { 'max_nick_time'              : value => '20 seconds', }
  ratbox::general { 'max_nick_changes'           : value => '5', }
  ratbox::general { 'anti_spam_exit_message_time': value => '5 minutes', }
  ratbox::general { 'ts_warn_delta'              : value => '30 seconds', }
  ratbox::general { 'ts_max_delta'               : value => '5 minutes', }
  ratbox::general { 'client_exit'                : value => 'yes', }
  ratbox::general { 'collision_fnc'              : value => 'yes', }
  ratbox::general { 'dline_with_reason'          : value => 'yes', }
  ratbox::general { 'kline_delay'                : value => '0 seconds', }
  ratbox::general { 'kline_with_reason'          : value => 'yes', }
  ratbox::general { 'non_redundant_klines'       : value => 'yes', }
  ratbox::general { 'warn_no_nline'              : value => 'yes', }
  ratbox::general { 'stats_e_disabled'           : value => 'no', }
  ratbox::general { 'stats_c_oper_only'          : value => 'no', }
  ratbox::general { 'stats_h_oper_only'          : value => 'no', }
  ratbox::general { 'stats_y_oper_only'          : value => 'no', }
  ratbox::general { 'stats_o_oper_only'          : value => 'yes', }
  ratbox::general { 'stats_P_oper_only'          : value => 'no', }
  ratbox::general { 'stats_i_oper_only'          : value => 'masked', }
  ratbox::general { 'stats_k_oper_only'          : value => 'masked', }
  ratbox::general { 'map_oper_only'              : value => 'no', }
  ratbox::general { 'operspy_admin_only'         : value => 'no', }
  ratbox::general { 'caller_id_wait'             : value => '1 minute', }
  ratbox::general { 'pace_wait_simple'           : value => '1 second', }
  ratbox::general { 'pace_wait'                  : value => '10 seconds', }
  ratbox::general { 'short_motd'                 : value => 'no', }
  ratbox::general { 'ping_cookie'                : value => 'no', }
  ratbox::general { 'connect_timeout'            : value => '30 seconds', }
  ratbox::general { 'disable_auth'               : value => 'no', }
  ratbox::general { 'no_oper_flood'              : value => 'yes', }
  ratbox::general { 'max_targets'                : value => '4', }
  ratbox::general { 'client_flood'               : value => '20', }
  ratbox::general { 'use_whois_actually'         : value => 'no', }
  ratbox::general { 'burst_away'                 : value => 'yes', }
  ratbox::general { 'nick_delay'                 : value => '0 seconds', }
  ratbox::general { 'reject_after_count'         : value => '3', }
  ratbox::general { 'reject_duration'            : value => '5 minutes', }
  ratbox::general { 'throttle_duration'          : value => '60', }
  ratbox::general { 'throttle_count'             : value => '4', }

  # Array values
  ratbox::general { 'oper_only_umodes':
    value => [
      'operwall',
      'locops',
      'servnotice',
    ],
  }
  ratbox::general { 'oper_umodes':
    value => [
      'locops',
      'servnotice',
      'operwall',
      'wallop',
    ],
  }
}
