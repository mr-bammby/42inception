FROM debian:buster
RUN apt-get update && apt-get -y upgrade
RUN apt install mariadb-server -y
CMD mysqld_safe

EXPOSE 3306
