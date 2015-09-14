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
    libgdbm-dev \
    libpq-dev

RUN curl -sSL https://get.docker.com/gpg | apt-key add -
RUN curl -sSL https://get.docker.com/ | sh
RUN usermod -aG docker jenkins

USER jenkins
