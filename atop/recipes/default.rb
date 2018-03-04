#
# Cookbook:: atop
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'atop' do
	action :install
end

template '/etc/sysconfig/atop' do
	source 'sysconfig-atop.erb'
	owner 'root'
	group 'root'
	mode '0644'
end

service 'atop' do
	action [:enable, :start]
end

