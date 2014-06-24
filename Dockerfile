FROM debian-oracle-jdk8
MAINTAINER "Murphy McMahon"

RUN cd /tmp \
    && wget -O jetty.tar.gz \
       'http://eclipse.org/downloads/download.php?file=/jetty/9.2.1.v20140609/dist/jetty-distribution-9.2.1.v20140609.tar.gz&r=1' \
    && tar xzf /tmp/jetty.tar.gz -C /opt \
    && mv /opt/jetty* /opt/jetty \
    && useradd jetty -U -s /bin/false \
    && chown -R jetty:jetty /opt/jetty

EXPOSE 8080

VOLUME ["/opt/jetty/webapp"]

ENTRYPOINT ["/opt/java/bin/java", "-jar", "/opt/jetty/start.jar"]

