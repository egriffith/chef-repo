#
# Cookbook:: firewalld-router
# Recipe:: edi
#
# Copyright:: 2018, The Authors, All Rights Reserved.

execute "Assign internal zone to internal_dev" do
	command "firewall-cmd --change-interface=#{node['firewalld']['edi']['internal_dev']} --zone=internal"
end

execute "Assign external zone to external_dev" do
	command "firewall-cmd --change-interface=#{node['firewalld']['edi']['external_dev']} --zone=external"
end
