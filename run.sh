#!/bin/bash

sudo docker kill elucidate-database
sudo docker rm elucidate-database
sudo docker run -d --name elucidate-database --env POSTGRES_PASSWORD=Password1234 --user postgres fractos/elucidate-database:latest
