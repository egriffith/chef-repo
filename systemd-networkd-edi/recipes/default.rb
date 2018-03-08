#
# Cookbook:: systemd-networkd-edi
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'systemd-networkd'

directory '/etc/systemd/network/' do
	owner 'root'
	group 'root'
	mode '0744'
	action :create
end

cookbook_file '/etc/systemd/network/enp1s0.network' do
	source 'enp1s0.network'
	owner 'root'
	group 'root'
	mode '0744'
	action :create
end

cookbook_file '/etc/systemd/network/enp2s0.network' do
	source 'enp2s0.network'
	owner 'root'
	group 'root'
	mode '0744'
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
