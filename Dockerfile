FROM openjdk:17
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

EXPOSE 8081



FROM openjdk:17
VOLUME /tmp
EXPOSE 8081
COPY target/*.jar spring-boot-docker.jar
ENTRYPOINT ["java","-jar","/spring-boot-docker.jar"]