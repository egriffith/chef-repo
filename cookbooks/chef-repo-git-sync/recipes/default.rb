#
# Cookbook:: chef-repo-git-sync
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

cookbook_file '/etc/systemd/system/chef-repo-git-sync.timer' do
	source 'chef-repo-git-sync.timer'
	owner 'root'
	group 'root'
	mode '0744'
	action :create
end

cookbook_file '/etc/systemd/system/chef-repo-git-sync.service' do
	source 'chef-repo-git-sync.service'
	owner 'root'
	group 'root'
	mode '0744'
	action :create
end

execute "Reloading systemd" do
	command "systemctl daemon-reload"
end

service 'chef-repo-git-sync.timer' do
	action [:enable, :start]
end
