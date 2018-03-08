#
# Cookbook:: dnsmasq
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'dnsmasq'
package 'dnscrypt-proxy'

cookbook_file '/etc/dnsmasq.d/dns.conf' do
	source 'dns.conf'
	owner 'root'
	group 'root'
	mode '0644'
	action :create
end

cookbook_file '/etc/dnsmasq.d/dhcp.conf' do
	source 'dhcp.conf'
	owner 'root'
	group 'root'
	mode '0644'
	action :create
end

cookbook_file '/etc/dnsmasq.d/dhcp-static-leases.conf' do
	source 'dhcp-static-leases.conf'
	owner 'root'
	group 'root'
	mode '0644'
	action :create
end

execute 'Allow cockpit traffic' do
	command 'firewall-cmd --zone=internal --add-service={dhcp,dhcpv6,dns} && firewall-cmd --runtime-to-permanent'
end
