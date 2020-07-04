# rtlamr-collect-docker
Docker image for bemasher's rtlamr and rtlamr-collect

I use bemasher's rtlamr and rtlamr-collect to capture my water meter's readings.  I wanted to run it from docker, and didn't see a docker image available. So, I created this.  

See:
https://github.com/bemasher/rtlamr
https://github.com/bemasher/rtlamr-collect

You'll need to set a number of env vars, such as:

COLLECT_INFLUXDB_PASS=password<br>
COLLECT_INFLUXDB_USER=username<br>
COLLECT_INFLUXDB_DATABASE=rtlamr<br>
COLLECT_INFLUXDB_HOSTNAME=http://1.2.3.4:8086<br>
RTLAMR_FORMAT=JSON<br>
RTLAMR_MSGTYPE=All<br>
RTLAMR_SERVER=1.2.3.4:1234<br>
