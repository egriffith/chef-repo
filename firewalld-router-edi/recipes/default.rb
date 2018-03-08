#
# Cookbook:: firewalld-router
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

execute "Assign internal zone to enp2s0" do
	command "firewall-cmd --inteface=enp2s0 --change-zone=internal && nmcli con mod enp2s0 connection.zone internal"
end

execute "Assign external zone to enp1s0" do
	command "firewall-cmd --interface=enp1s0 --change-zone=external && nmcli con mod enp1s0 connection.zone external"
end

execute "Setup forwarding rules between interfaces" do
	command "firewall-cmd --direct --add-rule ipv4 filter FORWARD 0 -i enp2s0 -o enp1s0 -j ACCEPT && firewall-cmd --direct --add-rule ipv4 filter FORWARD 0 -i enp1s0 -o enp2s0 -m state --state RELATED,ESTABLISHED -j ACCEPT"
end

execute "Commit firewall changes" do
	command "firewall-cmd --runtime-to-permanent"
end

### sysctl not necessary as firewalld automatically turns out ip forwarding is masquerading is invoked
#
#cookbook_file '/etc/sysctl.d/ipv4-forwarding' do
#	source 'sysctl-ipv4-forwarding.conf'
#	owner 'root'
#	group 'root'
#	mode '0644'
#	action :create
#end
