# proyerct root

#first create the network for the proyect
docker network create goals-net

#Start the networks:
## mongoDB
docker run --name mongodb -v mongoData:/data/db --rm -d --network goals-net -e MONGO_INITDB_ROOT_USERNAME=usrmongo -e MONGO_INITDB_ROOT_PASSWORD=secret mongo

## backend
cd ./backend
docker build -t goals-node .
docker run --name goals-backend --rm -d -p 80:80 --network goals-net goals-node

## frontend
cd ../frontend
docker build -t goals-react .
docker run --name goals-frontend --rm -it -p 3000:3000 goals-react
