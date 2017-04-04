USE debian:jessie

RUN echo "deb http://freeside.biz/~ivan/freeside-jessie/ ./" >> /etc/apt/sources.list
RUN echo "deb http://freeside.biz/~jeremyd/freeside4-jessie-stable/ ./" >> /etc/apt/sources.list

RUN apt-get update

RUN apt-get install freeside freeside-lib freeside-webui
RUN apt-mark hold freeside*

CMD ping 127.0.0.1