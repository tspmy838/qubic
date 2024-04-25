FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget tar

RUN mkdir /qubic

RUN wget -P /qubic https://dl.qubic.li/downloads/qli-Client-1.9.6-Linux-x64.tar.gz

RUN tar -xzvf /qubic/qli-Client-1.9.6-Linux-x64.tar.gz -C /

RUN rm /qubic/appsettings.json 

WORKDIR /qubic

CMD ["bash", "./qli-Client"]
