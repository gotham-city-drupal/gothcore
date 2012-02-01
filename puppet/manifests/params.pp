# Class: puppet::params
#
# This module manages the configuration of puppet
#
# Parameters:
#   $puppet_conf_template - location of puppet configuration template to be used
#   $puppet_server - location of the puppet master
#   $puppet_set_running - binary representing whether start=yes needs to be set
#
# Actions:
#
# Requires:
#   class puppet
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class puppet::params {  
  
  $puppetserver = "gothcore.gothamcitydrupal.com" 
  
  case $operatingsystem {
    /(Ubuntu|Mint)/: {
      $puppet_set_running = true
    }
    /(RedHat|CentOS|Fedora)/: {
      $puppet_set_running = false
    }
    default: {
      $puppet_set_running = false
    }
  }
}