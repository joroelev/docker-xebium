FROM maven:3-jdk-8

RUN apt-get update
RUN apt-get install -y git
RUN git clone git://github.com/xebia/Xebium

WORKDIR /Xebium

RUN mvn dependency:copy-dependencies

ENTRYPOINT mvn -Pfitnesse test
