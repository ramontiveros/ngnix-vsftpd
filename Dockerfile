FROM ubuntu

MAINTAINER Ramon Ontiveros, rontiveros@sitek.mx

RUN apt-get update && apt-get install -y nginx vsftpd

EXPOSE 21 80

COPY start.sh /usr/sbin/

CMD ["/usr/sbin/start.sh"]