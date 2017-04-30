# Pull image
```
docker pull rabahi/httpd
```

# Run image
```
docker run --publish 80:80 rabahi/httpd
```

You can see the apache site here : http://localhost:80

# Mount volume

Create mount point on host
```
mkdir -p /opt/volumes/httpd/conf.d
mkdir -p /opt/volumes/httpd/html

chown 48:48 /opt/volumes/httpd -R
chmod 755 /opt/volumes/httpd -R
```

Run docker container and set name to 'httpd'
```
docker run --name httpd --publish 80:80 --volume /opt/volumes/httpd/conf.d:/etc/httpd/conf.d --volume /opt/volumes/httpd/htdocs:/var/www/html rabahi/httpd 
```
