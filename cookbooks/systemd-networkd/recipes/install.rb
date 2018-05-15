#
# Cookbook:: systemd-networkd
# Recipe:: install
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'systemd-networkd'

directory '/etc/systemd/network/' do
	owner 'root'
	group 'root'
	mode '0755'
	action :create
end