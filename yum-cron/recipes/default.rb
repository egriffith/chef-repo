#
# Cookbook:: yum-cron
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'yum-cron'

cookbook_file '/etc/yum/yum-cron.conf' do
	source 'yum-cron.conf'
	owner 'root'
	group 'root'
	mode '0644'
	action :create
end

cookbook_file '/etc/yum/yum-cron-hourly' do
	source 'yum-cron-hourly.conf'
	owner 'root'
	group 'root'
	mode '0644'
	action :create
end

service 'yum-cron' do
	action [:enable, :start]
end
