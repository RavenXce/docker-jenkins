FROM jenkins

USER root

RUN apt-get update && apt-get install -y \
    make \
    automake \
    gcc \
    autoconf \
    bison \
    build-essential \
    libssl-dev \
    libyaml-dev \
    libreadline6-dev \
    zlib1g-dev \
    libncurses5-dev \
    libffi-dev \
    libgdbm3 \
    libgdbm-dev

USER jenkins
