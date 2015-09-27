FROM ubuntu:14.04

MAINTAINER Michael Bartoli <michael.bartoli@pomona.edu>

ENV JAVA_VERSION_MAJOR 8
ENV JAVA_VERSION_MINOR 60
ENV JAVA_VERSION_BUILD 27
ENV JAVA_PACKAGE       server-jre

RUN apt-get update
RUN apt-get -y install \
	curl \
	wget \
	unzip \
	xorg \
	git

WORKDIR /home
RUN git clone https://github.com/mbartoli/docker-matlab
WORKDIR /home/docker-matlab
RUN mkdir /mcr-install
RUN cp matlab.txt /mcr-install 
