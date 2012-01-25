# Class: apache::params
#
# This module manages the installation of apache
#
# Parameters:
#
# Actions:
#
# Requires:
#   class apache
#
# Sample Usage: include apache::install
#
# [Remember: No empty lines between comments and class definition]
class apache::install {
  package { $apache::params::apache_package:
    ensure => present,
    allowcdrom => true,
  }
}