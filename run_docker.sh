docker-machine rm default
docker-machine create --driver virtualbox default
docker-machine env default
eval $(docker-machine env default)