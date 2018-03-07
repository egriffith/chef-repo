#
# Cookbook:: dnsmasq
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'dnsmasq'

cookbook_file '/etc/NetworkManager/conf.d/dnsmasq.conf' do
	source 'NetworkManager-dns.conf'
	owner 'root'
	group 'root'
	mode '0644'
	action :create
end
