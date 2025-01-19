FROM amazoncorretto:17-alpine
COPY target/config-server-0.0.1-SNAPSHOT.jar config-server-0.0.1.jar

ENTRYPOINT ["java","-jar","-Dencrypt.key=${secret}","/config-server-0.0.1.jar"]