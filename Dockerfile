FROM openjdk:8-jre-alpine

LABEL maintainer="andrey.chernyshov@gmail.com"

COPY ./target/dropwizard-helloworld-*.jar dropwizard-helloworld.jar
COPY hello-world.yml /home/config/hello-world.yaml

EXPOSE 8080
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "/dropwizard-helloworld.jar", "server", "/home/config/hello-world.yaml"]
