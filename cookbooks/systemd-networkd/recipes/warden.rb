#
# Cookbook:: systemd-networkd
# Recipe:: warden
#
# Copyright:: 2018, The Authors, All Rights Reserved.

cookbook_file '/etc/systemd/network/enp1s0.network' do
	source 'enp1s0.network'
	owner 'root'
	group 'root'
	mode '0755'
	action :create
end

cookbook_file '/etc/systemd/network/enp2s0.network' do
	source 'enp2s0.network'
	owner 'root'
	group 'root'
	mode '0755'
	action :create
end

cookbook_file '/etc/systemd/network/enp3s0.network' do
	source 'enp3s0.network'
	owner 'root'
	group 'root'
	mode '0755'
	action :create
end

service 'systemd-networkd' do
   subscribes :reload, 'file[/etc/systemd/network/*.network]', :delayed
end