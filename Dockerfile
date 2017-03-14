FROM postgres:9.4

RUN apt-get update && apt-get install -y wget
RUN wget -O /opt/elucidate-server.tar.gz https://github.com/dlcs/elucidate-server/archive/1.0.1.tar.gz
RUN mkdir /opt/elucidate-server && tar -xzvf /opt/elucidate-server.tar.gz --strip-components=1 -C /opt/elucidate-server
COPY setup-database.sh /docker-entrypoint-initdb.d/.

EXPOSE 5432
