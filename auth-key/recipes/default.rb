#
# Cookbook:: auth-key
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

user = node['auth_key']['user']

directory '/home/#{user}/.ssh' do
  	owner #{user}
  	group #{user}
  	mode '0700'
  	action :create
end

cookbook_file '/home/#{user}/.ssh/authorized_keys' do
	source 'authorized_keys'
	owner #{user}
	group #{user}
	mode '0700'
	action :create
end
