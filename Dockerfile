FROM jenkins

USER root

# This is necessary to get the latest ver of Node.js mainly
# because javascript is really silly
RUN curl -sL https://deb.nodesource.com/setup_0.12 | bash -

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
    python-pip \
    nodejs

# Install ansible using pip
RUN pip install ansible

# Add jenkins as a docker user
RUN groupadd -g 999 docker
RUN gpasswd -a jenkins docker

USER jenkins
