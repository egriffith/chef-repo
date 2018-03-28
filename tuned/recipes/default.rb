#
# Cookbook:: tuned-edi
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'tuned'

execute "Set tuned profile for node" do
	command "tuned-adm profile #{node['tuned']['profile']}"
end

service 'tuned' do
	action [:enable, :start]
end


