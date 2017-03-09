# elucidate-database-docker
Development PostgreSQL database for Elucidate 

## Installation

```
git clone https://github.com/dlcs/elucidate-database-docker
cd elucidate-database-docker
git submodule init
sudo docker build -t elucidate-database .
```

## Running

```
sudo docker run -d \
	--name elucidate-database \
	--env POSTGRES_PASSWORD=<YOUR DB PASSWORD> \
	--user postgres \
	elucidate-database
```

This will try and expose port 5432 (standard PostgreSQL port).
