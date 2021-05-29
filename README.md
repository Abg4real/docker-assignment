### Create a simple docker image with Debian:buster-slim which has mysql up and running

#### Default user
```
username:scalereal
password:scalereal
```

#### Commands to execute:
(In the repository directory)
```
sudo docker build .
```
```
sudo docker run -it --name <Container name> <image id> bash
```
After you exit from this command, the container exits. So start it back before running again.
```
sudo docker start <Container name/id>
```
```
sudo docker exec -it <Container name/id> bash
```
