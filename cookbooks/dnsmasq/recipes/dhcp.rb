#
# Cookbook:: dnsmasq
# Recipe:: dhcp
#
# Copyright:: 2018, The Authors, All Rights Reserved.

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

service 'dnsmasq' do
   subscribes :reload, 'file[/etc/dnsmasq.d/dhcp.conf]', :immediately
end
