class ratbox::default::serverhide {
  ratbox::serverhide { 'flatten_links' : value => 'yes', }
  ratbox::serverhide { 'links_delay'   : value => '5 minutes', }
  ratbox::serverhide { 'hidden'        : value => 'no', }
  ratbox::serverhide { 'disable_hidden': value => 'no', }
}
