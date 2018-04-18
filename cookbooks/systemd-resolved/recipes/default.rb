#
# Cookbook:: systemd-resolved
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'systemd-resolved'

service 'systemd-networkd' do
	action [:enable, :start]
end

file '/etc/resolve.conf' do
	action :delete
	not_if { File.symlink?('/etc/resolv.conf') }
end

link '/etc/resolv.conf' do
	to '/run/systemd/resolve/resolv.conf'
end
