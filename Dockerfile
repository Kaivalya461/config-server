FROM amazoncorretto:21-alpine
COPY target/config-server-*.jar app.jar

ENTRYPOINT ["java","-jar","-Dencrypt.key=${secret}","/app.jar"]