# STEPS TO TEST

## Build Docker Image

docker build -t test .

## Remove test container if already running

docker rm -f test

## Start the container and expose port 8080 (for app) and 2222 for SSH

docker run -d -p 8080:8080 -p 2222:2222 --name test test

## Check logs to ensure that the app is running

docker logs test -f
[Press Ctrl + C to end]

## Test SSH

ssh root@localhost -p 2222  
root@localhost's password:  
(password in Docker!)
The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
root@50d8781b118b:/usr/src/app#

## THIS IS A SAMPLE AND IS NOT MAINTAINED
