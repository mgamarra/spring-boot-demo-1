#FROM docker-registry-default.cloud.cooperforte.coop/pgn-desen/pgn-v2-openjdk-11:1.0
#FROM docker-registry.default.svc:5000/pgn-desen/pgn-v2-openjdk-11:1.0
#FROM openjdk:latest
FROM dsohml.copel.com:9091/copel/copel-openjdk-11:latest

COPY target/*.jar /usr/app/app.jar
WORKDIR /usr/app
ENV PORT 5000
EXPOSE $PORT
#CMD [ "sh", "-c", "mvn -Dserver.port=${PORT} spring-boot:run" ]
CMD [ "sh", "-c", "java -Dserver.port=${PORT} -jar /usr/app/app.jar" ]

