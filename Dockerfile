FROM openjdk:11
ARG JAR_FILE=target/navy-0.0.1.jar
COPY ${JAR_FILE} navy.jar
ENTRYPOINT ["java", "-jar", "/navy.jar"]