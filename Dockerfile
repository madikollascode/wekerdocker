Dockerfile

FROM ubuntu:18.10
RUN apt-get update && apt-get install -y wget
RUN nproc
