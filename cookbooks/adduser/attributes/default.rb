default['adduser']['username'] = 'admin'
default['adduser']['comment'] = ''
default['adduser']['uid'] = ''
default['adduser']['gid'] = ''
default['adduser']['homedir'] = '/home/#{node[:adduser][:username]}'
default['adduser']['shell'] = '/usr/bin/bash'
