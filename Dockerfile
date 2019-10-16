FROM kalilinux/kali-linux-docker

ENV LANG=C.UTF-8
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ADD sources.list /etc/apt/sources.list
# RUN apt-key adv --keyserver pool.sks-keyservers.net --recv-keys ED444FF07D8D0BF6
RUN apt update 
RUN apt-get install kali-linux-all -y
USER root


