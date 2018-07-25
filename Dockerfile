FROM ubuntu:16.04
LABEL maintainer="Anshuman Bhartiya"

RUN apt-get update

RUN apt-get install -y libldns-dev git build-essential wget python3 python python-setuptools python-dev
RUN easy_install pip

WORKDIR /CORStest
ADD corstest.py run.sh urls.txt /CORStest/
RUN chmod +x corstest.py run.sh

ENTRYPOINT ["./run.sh"]
