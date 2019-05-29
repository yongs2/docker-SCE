FROM nginx:latest
MAINTAINER yongs2 yongs2@hotmail.com

USER root

RUN apt-get update \
	&& apt-get -y install git

RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

RUN cd /usr/share/nginx/html \
	&& rm -f /usr/share/nginx/html/index.html \
	&& git clone https://github.com/lankaixi/Scenario-Conversations-Editor \
	&& cp -Rp /usr/share/nginx/html/Scenario-Conversations-Editor/* /usr/share/nginx/html/

CMD ["nginx"]

EXPOSE 80
