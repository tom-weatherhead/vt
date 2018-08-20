# vt
Virginia Tech MEAN Web Application

Prerequisite: Docker Community Edition

To launch the application:

COMPOSE_HTTP_TIMEOUT=200 docker-compose --verbose up --build

Then populate the Mongo database: curl -X POST http://localhost:3000/u/ingest

You can then verify that the database is populated: curl http://localhost:3000/u/

Then browse to http://localhost:4200

To shut down the application:

docker-compose down
