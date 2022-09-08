https://www.youtube.com/watch?v=vZ6QdMNYqvQ    <- youtube link


Dockerfile
----------

RUN go build -o sunny_metrics22         <-- here we are creating from all the content of this application
a new image with name "sunny_metrics22"

ENTRYPOINT ["/app/sunny_metrics22"]    <-- here we are putting that image name for execution in
the ENTRYPOINT


docker-compose.yml
------------------
services:
prometheus44:         <-- here we are defining the name of the service as "prometheus44"

grafana:
image: grafana/grafana:latest
ports:
- 3000:3000
depends_on:
- prometheus44         <-- here we put the above defined service name make connection with Grafana
  
-------------------------------------------------
volumes:
- ./prometheus22:/etc/prometheus/    <-- in the application we have a folder name "prometheus22"
  and here we are trying to copy all the content from the
  folder and create a new folder in the docker container with the
-                                   name "prometheus" and paste all the content in it

-------------------------------------------------------------
services:
prometheus44:
depends_on:
- sunny-service        <-- here we are putting the below defined application name
under the "service -> depends_on" as the application should be
run first then the "prometheus" should run


sunny-service:           <--(Step-1) here we are defining the name of the application
build: .
ports:
- 8080:8080
