FROM eclipse-temurin:17-jre
WORKDIR /app

# Copy the already-built jar produced by Maven (run ./mvnw package first)
COPY target/*.jar app.jar

# Use the same port as in application.properties
EXPOSE 8089

ENTRYPOINT ["java","-jar","/app/app.jar"]
