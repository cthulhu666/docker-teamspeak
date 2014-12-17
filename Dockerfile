FROM debian:jessie
MAINTAINER jakub.gluszecki@gmail.com
RUN apt-get update && apt-get -qy install curl
RUN curl http://dl.4players.de/ts/releases/3.0.11.2/teamspeak3-server_linux-amd64-3.0.11.2.tar.gz | tar xvz
WORKDIR teamspeak3-server_linux-amd64
EXPOSE 9987/udp
EXPOSE 30033
EXPOSE 10011
CMD ["sh", "ts3server_minimal_runscript.sh"]

