FROM adoptopenjdk/openjdk8-openj9:x86_64-alpine-jdk8u282-b08_openj9-0.24.0-slim

COPY target/*.jar /usr/app/app.jar
WORKDIR /usr/app
ENV PORT 5000
EXPOSE $PORT
#CMD [ "sh", "-c", "mvn -Dserver.port=${PORT} spring-boot:run" ]
CMD [ "sh", "-c", "java -Dserver.port=${PORT} -jar /usr/app/app.jar" ]

