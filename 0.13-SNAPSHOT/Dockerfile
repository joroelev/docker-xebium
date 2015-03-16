FROM java:openjdk-8-jdk

RUN apt-get update 
RUN apt-get install -y --no-install-recommends maven git
RUN git clone git://github.com/xebia/Xebium

WORKDIR /Xebium

RUN mvn dependency:copy-dependencies

ENTRYPOINT mvn -Pfitnesse test
