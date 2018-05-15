#
# Cookbook:: systemd-networkd-edi
# Recipe:: services
#
# Copyright:: 2018, The Authors, All Rights Reserved.

service 'network' do
	action [:disable, :stop]
end

service 'NetworkManager' do
	action [:disable, :stop]
end

service 'systemd-networkd' do
	action [:enable, :start]
end
