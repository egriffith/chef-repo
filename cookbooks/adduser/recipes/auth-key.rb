directory "/home/#{node['adduser']['username']}/.ssh" do
  	owner node['adduser']['username']
  	group node['adduser']['username']
  	mode '0700'
  	action :create
end

remote_file "/home/#{node['adduser']['username']}/.ssh/authorized_keys" do
	source 'https://github.com/egriffith.keys'
	owner node['adduser']['username']
	group node['adduser']['username']
	mode '0700'
	action :create
end


