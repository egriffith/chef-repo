#
# Cookbook:: weekly-reboot
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.


cookbook_file '/etc/systemd/system/weekly-reboot.timer' do
	source 'weekly-reboot.timer'
	owner 'root'
	group 'root'
	mode '0744'
	action :create
end

cookbook_file '/etc/systemd/system/weekly-reboot.service' do
	source 'weekly-reboot.service'
	owner 'root'
	group 'root'
	mode '0744'
	action :create
end

execute "Reloading systemd" do
	command "systemctl daemon-reload"
end

service 'weekly-reboot.timer' do
	action [:enable, :start]
end
