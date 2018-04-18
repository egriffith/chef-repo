#
# Cookbook:: firewalld-router
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'firewalld'

execute "Assign internal zone to enp2s0" do
	command "firewall-cmd --change-interface=enp2s0 --zone=internal"
end

execute "Assign external zone to enp1s0" do
	command "firewall-cmd --change-interface=enp1s0 --zone=external"
end

execute "Commit firewall changes" do
	command "firewall-cmd --runtime-to-permanent"
end
