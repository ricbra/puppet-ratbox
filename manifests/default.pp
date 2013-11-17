class ratbox::default inherits ratbox {
  include ratbox::admin
  include ratbox::cluster
  include ratbox::log

  include ratbox::default::alias
  include ratbox::default::auth
  include ratbox::default::blacklist
  include ratbox::default::class
  include ratbox::default::channel
  include ratbox::default::general
  include ratbox::default::listen
  include ratbox::default::loadmodule
  include ratbox::default::modules
  include ratbox::default::operator
  include ratbox::default::privset
  include ratbox::default::serverhide
  include ratbox::default::serverinfo

  ratbox::exempt { 'default': }
  ratbox::shared { 'default': }
}
