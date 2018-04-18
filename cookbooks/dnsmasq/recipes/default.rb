#
# Cookbook:: dnsmasq
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'dnsmasq'

execute 'Allow cockpit traffic' do
	command 'firewall-cmd --zone=internal --add-service={dhcp,dhcpv6,dns} && firewall-cmd --runtime-to-permanent'
end

service 'dnsmasq' do
	action [:enable, :start]
end
