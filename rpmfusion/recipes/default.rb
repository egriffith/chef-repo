#
# Cookbook:: rpmfusion
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.


execute 'Install RPMFusion' do
	command 'yum localinstall --nogpgcheck https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm https://download1.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-7.noarch.rpm'
end
