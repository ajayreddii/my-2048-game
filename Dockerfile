FROM ubuntu
MAINTAINER AJAYREDDY549

RUN apt-get update && apt-get install nginx git systemctl -y
RUN git clone https://github.com/ajayreddii/2048.git &&  mv 2048/* /var/www/html
RUN systemctl eanable nginx
CMD ["nginx"]
EXPOSE 8080

