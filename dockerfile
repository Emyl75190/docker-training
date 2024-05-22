#FROM openjdk:17-alpine

#COPY target/SpringBootDocker-0.0.1-SNAPSHOT.jar app.jar

#ENTRYPOINT ["java","-jar","app.jar"]

FROM tomcat:9.0-alpine

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/SpringBootDocker-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]