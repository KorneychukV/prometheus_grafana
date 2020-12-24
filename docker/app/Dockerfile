FROM openjdk:13-jdk-alpine

USER root

RUN java -version
RUN mkdir /app

COPY ./app/app.jar /app
COPY ./app/lib /app/lib

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

CMD java -jar -Xmx3500m /app/app.jar
