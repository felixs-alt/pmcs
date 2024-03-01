FROM ubuntu:latest
COPY . .
RUN apt update -y
RUN apt install openjdk-17-jre -y
RUN apt install default-jdk -y
CMD java -Xmx2G -jar paper.jar nogui