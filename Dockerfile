FROM maven:3.5.2-jdk-8-alpine
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn package

# FROM payara/micro
# COPY --from=0 /tmp/target/HelloWAR*.war $DEPLOY_DIR
