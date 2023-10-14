#membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t elffree/karsajobs-ui:latest .
#Login ke Docker Hub via Terminal.
docker login
echo $PASSWORD_DOCKER_HUB | docker login -u elffree --password-stdin
#Mengunggah image ke Docker Hub
docker push elffree/karsajobs-ui:latest