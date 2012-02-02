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
  include puppet::params
  $puppetserver = $puppet::params::puppetserver
  
  augeas{"puppet_set_defaults" :
    context => "/etc/default/puppet",
    changes => "set START yes",
    onlyif  => "match START == no",
  }
}