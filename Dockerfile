FROM jenkins

USER root

# Install additional tools / package dependencies for building stuff
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
    libpq-dev \
    python-setuptools \
    python-dev \
    python-pip

# Install ansible using pip
RUN pip install ansible

USER jenkins
