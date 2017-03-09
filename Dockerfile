FROM postgres:9.4

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/dlcs/elucidate-server /opt/elucidate-server \
	&& cd /opt/elucidate-server \
	&& git checkout 63005da930960c87438d39c66c85713e0f32d8bf

COPY setup-database.sh /docker-entrypoint-initdb.d/.

EXPOSE 5432
