FROM java:openjdk-8-jdk

ENV XEBIUM_VERSION xebium-0.12

RUN apt-get update \
	&& apt-get install -y git maven \
	&& rm -rf /var/lib/apt/lists/*

RUN git clone git://github.com/xebia/Xebium

WORKDIR /Xebium
RUN git checkout $XEBIUM_VERSION
RUN mvn dependency:copy-dependencies

CMD mvn -Pfitnesse test
