# rtlamr-collect-docker
Docker image for bemasher's rtlamr and rtlamr-collect

I use bemasher's rtlamr and rtlamr-collect to capture my water meter's readings.  I wanted to run it from docker, and didn't see a docker image available. So, I created this.  

See:
https://github.com/bemasher/rtlamr
https://github.com/bemasher/rtlamr-collect

You'll need to set a number of env vars, such as:

COLLECT_INFLUXDB_PASS password
COLLECT_INFLUXDB_USER username
COLLECT_INFLUXDB_DATABASE rtlamr
COLLECT_INFLUXDB_HOSTNAME http://192.168.254.30:8086
RTLAMR_FORMAT JSON
RTLAMR_MSGTYPE All
RTLAMR_SERVER 192.168.254.30:1234
