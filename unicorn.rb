# Set the working application directory
# working_directory "/path/to/your/app"
APP_ROOT = "/usr/local/var/www/rupi"
working_directory APP_ROOT

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "#{APP_ROOT}/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/logs/unicorn.log"
# stdout_path "/path/to/logs/unicorn.log"
stderr_path "#{APP_ROOT}/logs/unicorn.log"
stdout_path "#{APP_ROOT}/logs/unicorn.log"

# Unicorn socket
# listen "/tmp/unicorn.[app name].sock"
listen "#{APP_ROOT}/sockets/unicorn.rupi.sock"

# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30