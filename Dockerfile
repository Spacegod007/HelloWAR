FROM maven:3.5.2-jdk-8-alpine AS MAVEN_TOOL_CHAIN
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn compile war:war

FROM payara/micro
COPY /tmp/target/HelloWar.war $DEPLOY_DIR
