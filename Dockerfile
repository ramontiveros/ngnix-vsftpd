FROM ubuntu

MAINTAINER Ramon Ontiveros, rontiveros@sitek.mx

RUN apt-get update && apt-get install -y nginx vsftpd

EXPOSE 21 80

CMD ["nginx-vsftpd"]