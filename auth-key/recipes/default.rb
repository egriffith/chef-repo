#
# Cookbook:: auth-key
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

cookbook_file '/home/joker/.ssh/authorized_keys' do
	source 'authorized_keys'
	owner 'joker'
	group 'joker'
	mode '0700'
	action :create
end
