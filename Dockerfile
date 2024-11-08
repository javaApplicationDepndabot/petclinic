# Use a lightweight JDK image for running the application
FROM eclipse-temurin:17.0.3_7-jdk-alpine 
WORKDIR /app

# Copy the pre-built JAR file into the container
COPY target/spring-petclinic-3.3.0-SNAPSHOT.jar /app/petclinic.jar

# Expose the application port
EXPOSE 8080

# Set the entry point for the application
ENTRYPOINT ["java", "-jar", "/app/petclinic.jar"]
