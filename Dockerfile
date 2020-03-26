FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} weather-1.0.jar
ENTRYPOINT ["java","-jar","/weather-1.0.jar"]