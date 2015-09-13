FROM jenkins

USER root

RUN apt-get update && apt-get install -y \
    make \
    automake \
    gcc \
    build-essential

USER jenkins
