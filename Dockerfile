FROM debian-oracle-jdk8
MAINTAINER "Murphy McMahon"

RUN wget -O /tmp/jetty.tar.gz \
    'http://eclipse.org/downloads/download.php?file=/jetty/9.2.1.v20140609/dist/jetty-distribution-9.2.1.v20140609.tar.gz&r=1' \
    && tar xzf /tmp/jetty.tar.gz -C /opt \
    && mv /opt/jetty* /opt/jetty \
    && useradd jetty -U -s /bin/false \
    && chown -R jetty:jetty /opt/jetty

ADD start-jetty.sh /app/start-jetty

EXPOSE 8080

ENV JETTY_HOME /opt/jetty

VOLUME ["/opt/jetty/webapp"]

ENTRYPOINT ["/app/start-jetty"]

