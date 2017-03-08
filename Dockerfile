FROM postgres:9.4

COPY app /opt/elucidate-server

COPY setup-database.sh /docker-entrypoint-initdb.d/.

EXPOSE 5432
