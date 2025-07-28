FROM debian:11

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y install nginx curl telnet \
  && rm -rf /var/lib/apt/lists/*

RUN rm -f /etc/nginx/sites-enabled/default \
  && rm -f /etc/nginx/sites-available/default

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]
