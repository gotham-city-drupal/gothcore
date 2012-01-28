# Class: puppet
#
# This module manages puppet
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage: include puppet
#
# [Remember: No empty lines between comments and class definition]
class puppet {
  include puppet::params, puppet::install, puppet::config, puppet::service
}
