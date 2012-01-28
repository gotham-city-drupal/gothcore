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
  
  include puppet::params
  
    file { "/etc/puppet/puppet.conf":
      ensure => present,
      content => template("puppet/$puppet::params::puppet_conf_template"),
      owner => "puppet",
      group => "puppet",
      require => Class["puppet::install"],
      notify => Class["puppet::service"],
    }
    
    if $puppet::params::puppet_set_running {
      file { "etc/default/puppet": 
        ensure => present,
        source => "puppet:///modules/puppet/files/puppet",
        owner => "puppet",
        group => "puppet",
        require => Class["puppet::install"],
        notify => Class["puppet::service"],
      }
    }
}