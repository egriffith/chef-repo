#
# Cookbook:: auth-key
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

directory '/home/joker/.ssh' do
  	owner 'joker'
  	group 'joker'
  	mode '0700'
  	action :create
end

cookbook_file '/home/joker/.ssh/authorized_keys' do
	source 'authorized_keys'
	owner 'joker'
	group 'joker'
	mode '0700'
	action :create
end
