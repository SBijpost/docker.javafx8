FROM openjdk:16-jdk-buster

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends openjfx xvfb xauth rpm librpmbuild8 fakeroot pigz git && \
    curl -sSL https://get.docker.com/ | sh && \
    apt-get clean
    
RUN rm -rf /var/lib/apt/lists/*
    
RUN gitlab-runner register -n \
  --url https://gitlab.fdmci.hva.nl/ \
  --registration-token zzPduMXszxuDmMvSEwQ_ \
  --executor docker \
  --description "My Docker Runner" \
  --docker-image "docker:19.03.12" \
  --docker-privileged \
  --docker-volumes "/certs/client"

    

    

