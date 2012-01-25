# Class: apache::params
#
# This module manages cross platform parameter designations 
#
# Parameters:
#   $apache_package - apache package machine name
#   $apache_service - apache service name
#
# Actions:
#
# Requires:
#   class apache
#
# Sample Usage: include apache::params
#
# [Remember: No empty lines between comments and class definition]
class apache::params {
  case $operatingsystem {
    /(Debian|Ubuntu|Mint)/: {
      $apache_package = "apache2"
      $apache_service = "apache2"
    }
    /(RedHat|CentOS|Fedora)/: {
      $apache_package = "httpd"
      $apache_service = "httpd"
    }
  }
}