FROM ubuntu:18.04

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends wget zip ca-certificates && \
    wget https://ak-delivery04-mul.dhe.ibm.com/sar/CMA/OSA/08q6g/0/ibm-aspera-cli-3.9.6.1467.159c5b1-linux-64-release.sh && \
    bash ibm-aspera-cli-3.9.6.1467.159c5b1-linux-64-release.sh && \
    rm -r ibm-aspera-cli-3.9.6.1467.159c5b1-linux-64-release.sh
ENV PATH="/root/.aspera/cli/bin/:${PATH}"
