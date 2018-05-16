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

directory '/var/lib/tftpboot' do
  	owner 'root'
  	group 'root'
  	mode '0744'
  	action :create
end

execute 'Setting selinux context on /var/lib/tftpboot/' do
	command 'semanage fcontext -a -t tftpdir_t "/var/lib/tftpboot(/.*)?" && restorecon -R -v /var/lib/tftpboot'
end

service 'dnsmasq' do
   subscribes :reload, 'file[/etc/dnsmasq.d/pxe.conf]', :immediately
end