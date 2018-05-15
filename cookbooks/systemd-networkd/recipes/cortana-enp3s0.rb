#
# Cookbook:: systemd-networkd-edi
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

cookbook_file '/etc/systemd/network/enp3s0.network' do
	source 'enp3s0.network'
	owner 'root'
	group 'root'
	mode '0755'
	action :create
end

service 'systemd-networkd' do
   subscribes :reload, 'file[/etc/systemd/network/enp3s0.network]', :delayed
end