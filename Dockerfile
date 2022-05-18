FROM openjdk:11-jre-slim

COPY target/*.jar /usr/app/app.jar
WORKDIR /usr/app
ENV PORT 5000
EXPOSE $PORT
#CMD [ "sh", "-c", "mvn -Dserver.port=${PORT} spring-boot:run" ]
CMD [ "sh", "-c", "java -Dserver.port=${PORT} -jar /usr/app/app.jar" ]
#ENTRYPOINT ["java","-XX:MinRAMPercentage=50.0","-XX:MaxRAMPercentage=80.0","-Dserver.port=${PORT}","-jar","app.jar"]

