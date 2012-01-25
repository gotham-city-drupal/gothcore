# Class: apache::params
#
# This module manages the apache service
#
# Parameters:
#
# Actions:
#
# Requires:
#   class apache
#
# Sample Usage: include apache::service
#
# [Remember: No empty lines between comments and class definition]
class apache::service {
  service { $apache::params::apache_service:
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class["apache::install"],
  }
}