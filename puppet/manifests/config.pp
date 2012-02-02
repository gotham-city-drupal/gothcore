# Class: puppet::config
#
# This module manages the configuration of puppet
#
# Parameters:
#
# Actions:
#
# Requires:
#   class puppet
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class puppet::config {
  augeas {"puppet_set_defaults" :
    context => "/files/etc/default/puppet",
    changes => "set START yes",
    onlyif  => "get START == no",
    require => Class["admin::augeas"],
    # this is stupid, don't ever do this -> notify => Class["puppet::service"],
  }
}