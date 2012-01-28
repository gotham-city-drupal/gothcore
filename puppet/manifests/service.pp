# Class: puppet::service
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
class puppet::service {
  service { "puppet": 
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class["puppet::install"],
  }
}