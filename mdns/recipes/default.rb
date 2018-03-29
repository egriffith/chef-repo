#
# Cookbook:: mdns
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'nss-mdns'

execute 'Allow cockpit traffic' do
	command 'firewall-cmd --zone=#{node[:mdns][:firewallzone]} --add-service=mdns && firewall-cmd --runtime-to-permanent'
end

service 'avahi-daemon' do
	action [:enable, :start]
end
