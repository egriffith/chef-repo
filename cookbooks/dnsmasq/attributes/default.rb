# dnsmasq attributes
#
default['dnsmasq']['conf-dir'] = '/etc/dnsmasq.d/'
default['dnsmasq']['dhcp']['listen_interface'] = 'eth1'
default['dnsmasq']['dhcp']['no-listen-interface'] = 'eth0'
default['dnsmasq']['dhcp']['option_set']['router'] = '192.168.0.1'
default['dnsmasq']['dhcp']['option_set']['ntp-server'] = '192.168.0.1'
default['dnsmasq']['dhcp']['option_set']['dns-server'] = '192.168.0.1'
default['dnsmasq']['dhcp']['option_set']['netmask'] = '255.255.255.0'
default['dnsmasq']['dhcp']['option_set']['domain-search'] = 'corp.jestergaming.tv'
default['dnsmasq']['dhcp']['dhcp_low'] = '192.168.0.100'
default['dnsmasq']['dhcp']['dhcp_high'] = '192.168.0.200'
default['dnsmasq']['dhcp']['leasetime'] = '12h'
default['dnsmasq']['dns']['listen_address'] = '127.0.0.1'
default['dnsmasq']['dns']['local-zone'] = ''
default['dnsmasq']['dns']['domain'] = ''
default['dnsmasq']['dns']['upstream_dns'] = '1.1.1.1'
default['dnsmasq']['dns']['cache_size'] = '512'
default['dnsmasq']['tftp']['root-dir'] = '/srv/tftp/'