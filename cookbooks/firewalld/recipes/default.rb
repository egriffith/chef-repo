#
# Cookbook:: firewalld-router
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'firewalld'

service 'firewalld' do
	action [:enable, :start]
end
