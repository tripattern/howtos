# Atlassian Jira

## Local Docker Test Server
* Setup
```
# Get docker jira server image from the web
# https://hub.docker.com/r/atlassian/jira-software
docker pull atlassian/jira-software
docker images # check downloaded

# Email?
# https://account.live.com/AddAssocId?uaid=2705c9fb40d441e697d69b7e98be713e
# Follow prompts to create atlassian account and to set up server

docker run -d -p 8080:8080 atlassian/jira-software
```

* Nuke Test System
```
docker stop <container number>
docker container rm <number>
docker image rm <number>
```
