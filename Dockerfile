FROM openjdk:8
VOLUME /tmp
EXPOSE 8080
ADD build/libs/spring-boot-demo.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar
