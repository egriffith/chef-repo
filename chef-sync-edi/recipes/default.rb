#
# Cookbook:: chef-sync-edi
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

cookbook_file '/etc/systemd/system/chef-sync.timer' do
	source 'chef-sync.timer'
	owner 'root'
	group 'root'
	mode '0744'
	action :create
end

cookbook_file '/etc/systemd/system/chef-sync.service' do
	source 'chef-sync.service'
	owner 'root'
	group 'root'
	mode '0744'
	action :create
end

execute "Reloading systemd" do
	command "systemctl daemon-reload"
end

service 'chef-sync.timer' do
	action [:disable, :stop]
end
