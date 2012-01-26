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
    
    # If set to false, causes error if CD is listed in sources.list
    # if set to true, causes debian (and maybe others) to hang during catalog run
    #
    #allowcdrom => true,
  }
}