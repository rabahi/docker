# Pull image
docker pull rabahi/httpd

# Run image
docker run --publish 80:80 rabahi/httpd

You can see httpd here : http://localhost:80

# Mount volume
mkdir -p /opt/volumes/httpd/conf.d
mkdir -p /opt/volumes/httpd/html

chown 48:48 /opt/volumes/httpd -R
chmod 755 /opt/volumes/httpd -R

docker run --name httpd --publish 80:80 --volume /opt/volumes/httpd/conf.d:/etc/httpd/conf.d --volume /opt/volumes/httpd/htdocs:/var/www/html rabahi/httpd 
