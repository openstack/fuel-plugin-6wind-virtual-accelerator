#
# Copyright 2016 6WIND S.A.

class virtual_accelerator::neutron_conf inherits virtual_accelerator {

  $advanced_params = $virtual_accelerator::advanced_params

  $disable_ipset = $virtual_accelerator::disable_ipset

    if $disable_ipset == true {

	  $OVS_CONF_FILE = "/etc/neutron/plugins/ml2/ml2_conf.ini"

	  package { 'crudini':
	      ensure => 'latest',
	  } ->
	  exec { 'disable_ipset':
	     command => "crudini --set ${OVS_CONF_FILE} securitygroup enable_ipset False",
	  } ->
	  exec { 'restart_ovs':
	     command => 'service openvswitch-switch restart',
	  } ->
	  exec { 'restart_ovs_agent':
	     command => 'sleep 5 && service neutron-plugin-openvswitch-agent restart',
	  }
  }

}

