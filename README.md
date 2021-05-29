### Create a simple docker image with Debian:buster-slim which has mysql up and running

#### Default user
```
username:scalereal
password:scalereal
```

Commands to execute:
```
sudo docker build .
```
```
sudo docker container create <Contaier Name> <Image name/id>
```
```
sudo docker exec -it <Container name/id>
```
```
mysql -u scalreal -p
```

