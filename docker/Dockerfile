###############
# Build stage #
###############
FROM adoptopenjdk:11 as build

# Download Gradle via wrapper
WORKDIR /app
COPY gradle gradle
COPY gradlew .
ENV GRADLE_OPTS="-Dorg.gradle.daemon=false"
RUN ./gradlew --version

# Download project dependencies
COPY *.gradle .
#COPY gradle.properties .
RUN ./gradlew resolveDependencies

# Build application
COPY . .
RUN ./gradlew build

#############
# Run stage #
#############
FROM adoptopenjdk:11-jre as run
WORKDIR /app
COPY --from=build /app/build/libs/demo.jar .
CMD java -jar demo.jar
EXPOSE 8080
