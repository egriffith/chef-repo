#
# Cookbook:: dnsmasq
# Recipe:: pxe
#
# Copyright:: 2018, The Authors, All Rights Reserved.

cookbook_file '/etc/dnsmasq.d/pxe.conf' do
	source 'pxe.conf'
	owner 'root'
	group 'root'
	mode '0644'
	action :create
end

directory '/srv/tftp' do
  	owner root
  	group root
  	mode '0700'
  	action :create
end


service 'dnsmasq' do
   subscribes :reload, 'file[/etc/dnsmasq.d/pxe.conf]', :immediately
end