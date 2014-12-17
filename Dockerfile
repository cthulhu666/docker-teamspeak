FROM debian:jessie
MAINTAINER jakub.gluszecki@gmail.com
RUN apt-get update && apt-get -qy install wget
RUN wget http://dl.4players.de/ts/releases/3.0.11.2/teamspeak3-server_linux-amd64-3.0.11.2.tar.gz && \
  tar xzvf teamspeak3-server_linux-amd64-3.0.11.2.tar.gz
WORKDIR teamspeak3-server_linux-amd64
EXPOSE 9987
EXPOSE 30033
EXPOSE 10011
EXPOSE 41144
CMD ["sh", "ts3server_minimal_runscript.sh"]

