FROM ubuntu:20.04

LABEL maintainer="Chandresh Rajkumar Manonmani <cs1193@gmail.com>"

ENV DAEMON_RUN true
ENV SPARK_VERSION 2.4.5
ENV HADOOP_VERSION 2.7
ENV SCALA_VERSION 2.13.2
ENV SCALA_HOME /usr/share/scala
ENV SPARK_HOME /spark

RUN apt-get update -yq
RUN apt-get install -qq -y curl vim software-properties-common ssh net-tools ca-certificates jq
RUN apt-get install -qq -y gnupg2 wget

RUN wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add -
RUN add-apt-repository -y https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
RUN apt-get install -qq -y adoptopenjdk-8-openj9
