#!/bin/sh
echo "Stopping all docker containers...";
container=$(docker container ls -q);
echo $container;
[ -z "$container" ] && echo "No running container found" || docker stop $(docker container ls -q);
echo "Deleting all docker data...";
docker system prune -a -f;
sudo docker network create tunnel;
echo "Docker reset successfull...";
exit 0