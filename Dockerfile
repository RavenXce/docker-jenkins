FROM jenkins

RUN apt-get update && apt-get install -y \
    make \
    automake \
    gcc \
    build-essential
