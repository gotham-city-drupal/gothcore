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
  require puppet::params
  include puppet::install, puppet::config, puppet::service
}
