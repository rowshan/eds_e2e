FROM python:2.7
MAINTAINER Rowshan Jahan Sathi "sathi@tu-berlin.de"
COPY . /app
WORKDIR /app

# install packages and clean up
RUN printf "Starting update...\n" && \
    apt-get update -qq && \
    printf "Update finished.\n" && \
    printf "Starting dist-upgrade...\n" && \
    apt-get dist-upgrade -y > /dev/null && \
    printf "Upgrade finished.\n" && \
    printf "Starting install...\n" && \
    apt-get install -y \
    git \
    curl \
    build-essential \
    netbase \
    iproute2 \
    python-pip \
    python-dev \
    libev-dev \
    gcc \
    make \
    automake \
    jq > /dev/null && \
    apt-get clean && \
    printf "Installation and cleanup finished.\n"


RUN pip install -r requirements.txt

#ENTRYPOINT ["/bin/sh",  "run.sh"]

ENTRYPOINT ["python"]
CMD ["app.py"]