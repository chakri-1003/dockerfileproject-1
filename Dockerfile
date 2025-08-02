# base image
FROM openjdk:17

# set the working directory inside the container
WORKDIR /usr/src/app

# Copy the Jar files from the target directory to inside container
COPY target/simple-app.jar  /usr/src/app/simple-app.jar

# Expose the application on port 8080
EXPOSE 8080

# Command to run the JAR file
CMD ["java", "-jar", "/usr/src/app/simple-app.jar"]


