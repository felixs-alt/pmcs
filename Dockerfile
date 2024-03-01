FROM ubuntu:latest
COPY . .
RUN apt update -y
RUN apt install git
RUN git pull
RUN apt install openjdk-17-jre -y
EXPOSE 25565
CMD java -Xmx2G -jar paper.jar nogui