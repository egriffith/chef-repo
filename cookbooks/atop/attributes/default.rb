# sysconfig atop
#

# Current Day format
default['atop']['CURDAY'] = `date +%Y%m%d`

# Log files path
default['atop']['LOGPATH'] = '/var/log/atop'

# Binaries path
default['atop']['BINPATH'] = '/usr/bin'

# PID File
default['atop']['PIDFILE'] = '/var/run/atop.pid'

# interval in seconds (default 10 minutes)
default['atop']['INTERVAL'] = '600'
