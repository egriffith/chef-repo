#
# Cookbook:: ntpd-server
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'ntp'

execute 'Allow cockpit traffic' do
	command 'firewall-cmd --zone=internal --add-service=ntp && firewall-cmd --runtime-to-permanent'
end

cookbook_file '/etc/ntp.conf' do
	source 'etc-ntp.conf'
	owner 'root'
	group 'root'
	mode '0644'
	action :create
end

service 'ntpd' do
	action [:enable, :start]
end

