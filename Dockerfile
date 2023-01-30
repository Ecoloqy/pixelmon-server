FROM openjdk:8u131-jdk-alpine
ARG FORGE=FALSE

RUN mkdir minecraft
VOLUME minecraft

COPY . /minecraft
WORKDIR /minecraft

EXPOSE 25565 25575
CMD java -jar -Xmx2G -Xms2G server-1.16.5.jar nogui
