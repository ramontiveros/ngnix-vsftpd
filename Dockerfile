FROM ubuntu

MAINTAINER Ramon Ontiveros, rontiveros@sitek.mx

RUN apt-get update && apt-get install -y nginx vsftpd

EXPOSE 21 80

COPY start.sh /usr/sbin/
RUN chmod +x /usr/sbin/start.sh

CMD ["/usr/sbin/start.sh"]