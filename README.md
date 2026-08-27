1.docker build -t server . \
docker build -t client . \
2.docker network create my_net \
3.docker run --detach --name server --network my_net -v $(pwd):/scripts server:latest /scripts/server.sh \
docker run --detach --name client --network my_net -v $(pwd):/scripts client:latest /scripts/client.sh \
4.docker exec -it client ping -c 3 server \
docker exec -it server ping -c 3 client \
5.
Check the server output: \
    docker logs server \
The server should receive: \
    Hello from client! \
 
