#
# Cookbook:: firewalld-router
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

execute "Assign internal zone to enp2s0" do
	command "firewall-cmd --change-interface=enp2s0 --zone=internal"
end

execute "Assign external zone to enp1s0" do
	command "firewall-cmd --change-interface=enp1s0 --zone=external"
end

#execute "Setup forwarding rules between interfaces" do
#	command "firewall-cmd --direct --add-rule ipv4 filter FORWARD 0 -i enp2s0 -o enp1s0 -j ACCEPT && firewall-cmd --direct --add-rule ipv4 filter FORWARD 0 -i enp1s0 -o enp2s0 -m state --state RELATED,ESTABLISHED -j ACCEPT"
#end

execute "Commit firewall changes" do
	command "firewall-cmd --runtime-to-permanent"
end
