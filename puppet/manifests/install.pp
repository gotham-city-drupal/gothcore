# Class: puppet::install
#
# This module manages the installation of puppet
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
class puppet::install {
  package { "puppet" :
    ensure => "2.7.1",
  }
}