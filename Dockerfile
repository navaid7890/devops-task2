
FROM httpd:2.4
USER root
COPY . /usr/local/apache2/htdocs/

EXPOSE 50001
