# Use the official OpenJDK 17 image as the base image
FROM openjdk:17-jdk-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the JAR file from the target directory to the container
COPY target/jira_project-0.0.1-SNAPSHOT.war app.war

# Specify the command to run the application
CMD ["java", "-jar", "app.war"]