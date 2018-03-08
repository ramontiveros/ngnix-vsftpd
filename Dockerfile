FROM ubuntu

MAINTAINER Ramon Ontiveros, rontiveros@sitek.mx

RUN apt-get update && apt-get install -y nginx vsftpd

EXPOSE 21 80

COPY run.sh /usr/sbin/

CMD ["/usr/sbin/run.sh"]