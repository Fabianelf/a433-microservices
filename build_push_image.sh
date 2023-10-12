#membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .
#Melihat daftar image di lokal.
docker image ls
#Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
docker tag localhost:8080/item-app:latest elffree/item-app:v1
#Login ke Docker Hub via Terminal.
docker login
echo $PASSWORD_DOCKER_HUB | docker login -u elffree --password-stdin
#Mengunggah image ke Docker Hub
docker push elffree/item-app:v1