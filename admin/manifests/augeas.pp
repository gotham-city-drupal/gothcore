# Class: admin::augeas
#
# This module manages admin
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#   include admin::augeas
#
# [Remember: No empty lines between comments and class definition]
class admin::augeas {
  package { [ "augeas-lenses", "augeas-tools", "libaugeas0", "libaugeas-ruby1.8" ]:
    ensure => "present"
  }
}
