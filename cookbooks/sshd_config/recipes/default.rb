#
# Cookbook:: sshd_config
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

cookbook_file '/etc/ssh/sshd_config' do
	source 'sshd_config'
	owner 'root'
	group 'root'
	mode '0700'
	action :create
end

execute 'Test SSH' do
	command "sshd -t"
end

service 'sshd' do
	action [:restart, :enable]
	subscribes :reload, 'file[/etc/ssh/sshd_config]', :immediately
end
