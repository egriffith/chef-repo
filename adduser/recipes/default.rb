#
# Cookbook:: adduser
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

user 'Adding user: #{node[:adduser][:username]}' do
    comment #{node[:adduser][:comment]}
    uid #{node[:adduser][:uid]}
    gid #{node[:adduser][:gid]}
    home #{node[:adduser][:homedir]}
    shell #{node[:adduser][:shell]}
end