FROM kyma/docker-nginx
COPY example/dist /var/www
CMD 'nginx'