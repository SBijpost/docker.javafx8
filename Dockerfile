FROM openjdk:16-jdk-buster

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends openjfx xvfb xauth rpm librpmbuild8 fakeroot pigz git docker && \
    apt-get clean
    
RUN rm -rf /var/lib/apt/lists/*
    

