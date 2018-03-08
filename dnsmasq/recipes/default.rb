#
# Cookbook:: dnsmasq
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'dnsmasq'
package 'dnscrypt-proxy'

cookbook_file '/etc/NetworkManager/conf.d/dnsmasq.conf' do
	source 'NetworkManager-dns.conf'
	owner 'root'
	group 'root'
	mode '0644'
	action :create
end

execute 'Allow cockpit traffic' do
	command 'firewall-cmd --zone=internal --add-service={dhcp,dhcpv6,dns} && firewall-cmd --runtime-to-permanent'
end
