# pull linux base image
FROM nginx
# run install package
#RUN apt-get update && apt-get upgrade
COPY /sample-html /usr/local/nginx/html
## set environment variable
#ENV WEB_DOCUMENT_INDEX=index.html
## container expose port
EXPOSE 80
## init command when container started
#CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]