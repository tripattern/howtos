# Netstat

## How to find port or domain of a specific connection
```
netstat -T | grep <snippet from domain>
netstat -tup -W | column -t | grep <snippet from domain>
```
