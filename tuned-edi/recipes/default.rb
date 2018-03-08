#
# Cookbook:: tuned-edi
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'tuned'

execute "Set tuned to network-latency mode" do
	command "tuned-adm profile network-latency"
end

