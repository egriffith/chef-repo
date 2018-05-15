#
# Cookbook:: cockpit
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#Install Cockpit and the required sub-packages
package %w(cockpit cockpit-ws cockpit-docker cockpit-packagekit cockpit-selinux cockpit-storaged cockpit-machines)

#Enable cockpit's socket service and start it up.

service 'cockpit.socket' do
	action [ :enable, :start]
end

execute 'Allow cockpit traffic' do
	command 'firewall-cmd --zone=internal --add-service=cockpit && firewall-cmd --runtime-to-permanent'
end

