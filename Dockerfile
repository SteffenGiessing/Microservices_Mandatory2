FROM openjdk:8-jdk-alpine
ADD target/microservies-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 80
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]