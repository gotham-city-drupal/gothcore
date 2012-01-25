# Class: apache
#
# This module manages the apache
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class apache {
  include apache::params, apache::install, apache::service
}
