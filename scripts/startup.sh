#!/bin/sh

echo Starting Docker containers...
docker-compose up -d

echo Terminating existing Mutagen sync sessions...
mutagen project terminate --project-name %PROJECT_NAME%

echo Starting Mutagen sync...
mutagen project start --project-name %PROJECT_NAME%

echo Done!