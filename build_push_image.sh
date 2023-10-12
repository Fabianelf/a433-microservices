docker build -t item-app:v1 .
docker image ls
docker tag localhost:8080/item-app:latest elffree/item-app:v1
docker login
docker push elffree/item-app:v1