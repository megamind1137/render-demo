FROM openjdk:17
VOLUME /tmp
EXPOSE 8081
COPY target/*.jar spring-boot-docker.jar
ENTRYPOINT ["java","-jar","/spring-boot-docker.jar"]