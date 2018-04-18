#
# Cookbook:: dnsmasq
# Recipe:: adblock
#
# Copyright:: 2018, The Authors, All Rights Reserved.

remote_file 'etc/dnsmasq.d/adblock.conf' do
  source 'http://pgl.yoyo.org/adservers/serverlist.php?hostformat=dnsmasq-server&showintro=1&mimetype=plaintext'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end

service 'dnsmasq' do
   subscribes :reload, 'file[/etc/dnsmasq.d/adblock.conf]', :immediately
end