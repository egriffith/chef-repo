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

service 'ssh' do
	action [:restart, enable]
end
