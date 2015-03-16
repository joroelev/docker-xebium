FROM ubuntu:14.04 

RUN apt-get update && apt-get install -y openjdk-7-jdk maven git

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64/jre

RUN git clone git://github.com/xebia/Xebium

WORKDIR /Xebium

RUN mvn dependency:copy-dependencies

ENTRYPOINT mvn -Pfitnesse test
