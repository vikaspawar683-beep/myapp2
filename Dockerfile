FROM openjdk:11-jre-slim
WORKDIR /app
COPY target/employee-management-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 808
ENTRYPOINT ["java", "-jar", "app.jar"]
