FROM java:openjdk-8-jdk

RUN apt-get update 
RUN apt-get install -y --no-install-recommends maven git
RUN git clone git://github.com/xebia/Xebium 

WORKDIR /Xebium

RUN git checkout xebium-0.12

RUN mvn dependency:copy-dependencies

ENTRYPOINT mvn -Pfitnesse test
