# proyerct root

#first create the network for the proyect
docker network create goals-net

#Start the networks:
## mongoDB
docker run --name mongodb --rm -d --network goals-net mongo

## backend
cd ./backend
docker run --name goals-backend --rm -d --network goals-net goals-node

## frontend
cd ../frontend
docker 
