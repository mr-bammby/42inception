FROM debian:bullseye-slim
RUN apt-get update && apt-get -y upgrade
RUN apt-get install gettext-base
RUN apt-get install openssl
RUN apt-get install nginx -y

RUN	mkdir /run/nginx
ENV CERT_DIR=/etc/openssl
ENV CERT_NAME=/etc/openssl/localhost
ENV DOMAIN_NAME=localhost
ENV PHP_HOST=php-fpm
ENV PHP_PORT=9000
ENV FASTCGI_PARAM='$document_root$fastcgi_script_name'
COPY ./conf/nginx.conf ./temp.conf
ADD ./tools/setup.sh .
#RUN chmod +x ./setup.sh
EXPOSE 443
RUN	mkdir ${CERT_DIR}
#CMD	["sh", "./setup.sh"]
#ENTRYPOINT ["nginx"]