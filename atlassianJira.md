# Atlassian Jira

## Local Docker Test Server
```
# Get docker jira server image from the web
# https://hub.docker.com/r/atlassian/jira-software
docker pull atlassian/jira-software
docker images # check downloaded

docker run -d -p 8080:8080 atlassian/jira-software

# Nuke test system
docker container rm <number>
docker image rm <number>
```
