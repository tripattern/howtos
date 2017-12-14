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
```

## Usage
```
docker-compose up-d

```
