FROM python:3.8.5-slim-buster

RUN apt-get update && apt-get install -y ssh sshpass
RUN pip install --upgrade pip
ARG ANSIBLE_VERSION=2.10.5

RUN pip install  ansible==$ANSIBLE_VERSION

ENV LIBRARY_PATH=/lib:/usr/lib
WORKDIR /ansible
COPY ./ /ansible
VOLUME [ "/ansible" ]
