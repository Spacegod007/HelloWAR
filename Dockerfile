FROM payara/micro
COPY ./target/HelloWAR.war $DEPLOY_DIR
