# Init swarm
```
docker swarm init
```

# Deploy stack

Create mount point on host
```
mkdir -p /opt/volumes/httpd/{conf.d,html}

chown 48:48 /opt/volumes/httpd/ -R
chmod 755 /opt/volumes/httpd/ -R
```

Deploy statck
```
docker stack deploy -c docker-compose.yml stack-httpd
```

You can see the apache site here : 
 - http://localhost:80
 - https://localhost:443
 
 
