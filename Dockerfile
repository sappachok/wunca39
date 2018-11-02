# pull linux base official image
FROM webdevops/nginx
# run setup ubuntu package
#RUN apt-get update && apt-get upgrade
#RUN apt-get -y install apache2
#RUN apt-get -y install git
# run setup php5
#RUN apt-get -y install php7.0 libapache2-mod-php7.0
# set up devstart template
#RUN git clone https://github.com/BlackrockDigital/startbootstrap-creative /tmp/demo
#RUN cp -Rf /tmp/demo/* /app
# container expose port  80
COPY ./wunca38/sample-html /app
ENV WEB_DOCUMENT_INDEX=index.html
EXPOSE 80
#CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]