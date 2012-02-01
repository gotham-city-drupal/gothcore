# Class: puppet::config
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
class puppet::config {
  $puppetserver = $puppet::params::puppetserver
    
  if $puppet::params::puppet_set_running {
    file { "/etc/default/puppet": 
      ensure => present,
      source => "puppet:///modules/puppet/puppet",
      owner => "puppet",
      group => "puppet",
      require => Class["puppet::install"],
      notify => Class["puppet::service"],
    }
  }
}