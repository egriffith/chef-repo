#
# Cookbook:: systemd-networkd-edi
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'systemd-networkd'

directory '/etc/systemd/network/' do
	owner 'root'
	group 'root'
	mode '0755'
	action :create
end

service 'network' do
	action [:disable, :stop]
end

service 'NetworkManager' do
	action [:disable, :stop]
end

service 'systemd-networkd' do
	action [:enable, :start]
end
