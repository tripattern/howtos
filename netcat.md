# Netcat

# Man-in-the-Middle Debugging
* Setup and start netcat to listen on localhost port 12345
```
nc -l -p 12345 
```
* Open up a browser and navigate to http://localhost:12345
* Start another netcat listener
```
nc example.com 80
```
* Copy the http response from above
* Paste it into the the first netcat session and the browser will update
  * This is because it awaits a response from the nectat session
