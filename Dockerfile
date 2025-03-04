FROM openjdk:17

LABEL name="Saint Deemene"

ENV JAVA_OPTS=""
ARG JAR_FILE=./target/*.jar
COPY ${JAR_FILE} /usr/app.jar
WORKDIR /usr/
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar /usr/app.jar"]