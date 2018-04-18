#
# Cookbook:: fail2ban
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'fail2ban'
package 'fail2ban-systemd'
package 'fail2ban-firewalld'

cookbook_file '/etc/fail2ban/jail.d/sshd.local' do
	source 'jail_sshd.local'
	owner 'root'
	group 'root'
	mode '0755'
	action :create
end

service 'fail2ban' do
	action [:enable, :start]
end

