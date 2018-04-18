user = node['adduser']['username']

directory '/home/#{user}/.ssh' do
  	owner #{user}
  	group #{user}
  	mode '0700'
  	action :create
end

remote_file '/home/#{user}/.ssh/authorized_keys' do
	source 'https://github.com/egriffith.keys'
	owner #{user}
	group #{user}
	mode '0700'
	action :create
end
