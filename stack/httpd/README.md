# Init swarm
```
docker swarm init
```

# Deploy stack

Create mount point on host
```
mkdir -p /opt/volumes/httpd/{conf.d,htdocs}

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
 
 # Manage stack

List stack tasks
```
docker stack ps stack-httpd
```

Stop stack tasks
```
docker stack rm stack-httpd
```
