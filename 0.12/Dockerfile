FROM maven:3-jdk-8

ENV XEBIUM_VERSION xebium-0.12

RUN apt-get update
RUN apt-get install -y git
RUN git clone git://github.com/xebia/Xebium

WORKDIR /Xebium
RUN git checkout $XEBIUM_VERSION
RUN mvn dependency:copy-dependencies

ENTRYPOINT mvn -Pfitnesse test
