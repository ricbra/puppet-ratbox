class ratbox::default::channel {
  ratbox::channel { 'use_invex'                 : value => 'yes', }
  ratbox::channel { 'use_except'                : value => 'yes', }
  ratbox::channel { 'use_knock'                 : value => 'yes', }
  ratbox::channel { 'knock_delay'               : value => '5 minutes', }
  ratbox::channel { 'knock_delay_channel'       : value => '1 minute', }
  ratbox::channel { 'max_chans_per_user'        : value => '15', }
  ratbox::channel { 'max_bans'                  : value => '100', }
  ratbox::channel { 'default_split_user_count'  : value => '0', }
  ratbox::channel { 'default_split_server_count': value => '0', }
  ratbox::channel { 'no_create_on_split'        : value => 'no', }
  ratbox::channel { 'no_join_on_split'          : value => 'no', }
  ratbox::channel { 'burst_topicwho'            : value => 'yes', }
}
