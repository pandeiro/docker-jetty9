# Jetty 9 Docker Image

A Jetty 9 image based on Debian Wheezy and
[Oracle JDK8](https://github.com/pandeiro/docker-oracle-jdk8).

## Building

    git clone https://github.com/pandeiro/docker-jetty9 && cd docker-jetty9
    
    docker build -t 'jetty9' .

## Usage

    docker run -v /path/to/webapps:/opt/jetty/webapps pandeiro/jetty9

