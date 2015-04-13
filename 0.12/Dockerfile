FROM joroelev/xebium:latest

ENV XEBIUM_VERSION xebium-0.12

RUN git checkout $XEBIUM_VERSION

CMD mvn -Pfitnesse test
