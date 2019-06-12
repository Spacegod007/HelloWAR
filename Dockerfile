FROM maven:3.5.2-jdk-8-alpine AS MAVEN_TOOL_CHAIN
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn package

FROM payara/micro
COPY --from=MAVEN_TOOL_CHAIN /tmp/target/HelloWAR*.war $DEPLOY_DIR
