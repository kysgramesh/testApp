FROM openjdk:8-jdk-alpine

ARG compose_version=1.19.0

ADD target/campaignNext-spring-boot-0.0.1-SNAPSHOT.jar /usr/local/app.jar

EXPOSE 8080

ENV JAVA_OPTS=""
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /usr/local/app.jar


