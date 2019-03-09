FROM ubuntu

RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get install wget openjdk-8-jdk git -y
