# Pull image
docker pull rabahi/httpd

# Run image
docker run --publish 80:80 rabahi/httpd

You can see httpd here : http://localhost:80

# Mount volume
mkdir -p /opt/volumes/conf.d
mkdir -p /opt/volumes/html

docker run --publish 80:80 --volume /opt/volumes/conf.d:/etc/httpd/conf.d --volume /opt/volumes/htdocs:/var/www/html rabahi/httpd 
