# Docker Compose

## Install
### Ubuntu

## Configuration
* docker-compose.yml
```
version: '2'
services:
 srv:
  image: python:2-slim
  command: python -m SimpleHTTPServer 8080
  ports:
   - 127.0.0.1:<PC Port>:<Internal docker port>
  volumes:
   - ./web:/html:ro 
# left side is the path from reference of the docker-compose file and right side indicates html root folder
# ro is read only on this volume
  working_dir: /html # so don't see in browser the folder html then 
```

## Usage
```
docker-compose up-d # kills everything and restarts dokcer and reads docker compose file and starts fresh containers i.e. no old state


```
