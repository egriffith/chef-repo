#
# Cookbook:: dnsmasq
# Recipe:: dns
#
# Copyright:: 2018, The Authors, All Rights Reserved.

cookbook_file '/etc/dnsmasq.d/dns.conf' do
	source 'dns.conf'
	owner 'root'
	group 'root'
	mode '0644'
	action :create
end

service 'dnsmasq' do
   subscribes :reload, 'file[/etc/dnsmasq.d/dns.conf]', :immediately
end