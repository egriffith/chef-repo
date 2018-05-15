#
# Cookbook:: firewalld-router
# Recipe:: edi
#
# Copyright:: 2018, The Authors, All Rights Reserved.

execute "Assign internal zone to internal_dev" do
	command "firewall-cmd --change-interface=#{node['firewalld']['cortana']['internal_dev']} --zone=internal"
end

execute "Assign external zone to external_dev" do
	command "firewall-cmd --change-interface=#{node['firewalld']['cortana']['external_dev']} --zone=external && firewall-cmd --zone=external --add-service=dhcpv6-client"
end

execute "Assigning internal zone to management dev" do
		command "firewall-cmd --change-interface=#{node['firewalld']['cortana']['management_dev']} --zone=internal"
end