FROM openjdk:8
VOLUME /tmp
EXPOSE 8080

RUN useradd -s /bin/bash appuser

COPY spring-boot-demo.jar app.jar
RUN chown appuser:appuser app.jar

USER appuser
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]
