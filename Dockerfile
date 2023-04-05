FROM eclipse-termurin:17-jdk-alpine
VOLUME /tmp
EXPOSE 8080
COPY target/*.jar spring-boot-docker.jar
ENTRYPOINT ["java","-jar","/spring-boot-docker.jar"]