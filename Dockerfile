# Use a base image that has Java installed
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /recipeApp

# Copy the Spring Boot application JAR file to the container
COPY src/main/java/com/example/recipe/RecipeApplication.java app.jar

# Expose the port that your Spring Boot application runs on
EXPOSE 8080

# Set environment variables for PostgreSQL
ENV SPRING_DATASOURCE_URL=jdbc:postgresql://your-postgresql-server:5432/yourdatabase
ENV SPRING_DATASOURCE_USERNAME=yourusername
ENV SPRING_DATASOURCE_PASSWORD=yourpassword

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]