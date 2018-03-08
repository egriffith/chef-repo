#
# Cookbook:: mdns
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'mdns'

execute 'Allow cockpit traffic' do
	command 'firewall-cmd --zone=internal --add-service=mdns && firewall-cmd --runtime-to-permanent'
end

service 'avahi-daemon' do
	action [:enable, :start]
end

