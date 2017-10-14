FROM openjdk:8
VOLUME /tmp
EXPOSE 8080

RUN useradd -s /bin/bash appuser

ADD spring-boot-demo.jar app.jar
RUN chown appuser:appuser app.jar

USER appuser
ENV JAVA_OPTS=""
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar
