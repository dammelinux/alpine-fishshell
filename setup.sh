#!/bin/sh
apk update \
&& apk add htop \
		vim \
		git \
		tree \
		curl \
		ncurses \
		util-linux \
		groff \
		bc \
		wget \
		# run cmake command
		cmake \
&& wget https://github.com/fish-shell/fish-shell/releases/download/3.1.2/fish-3.1.2.tar.gz \
&& tar -xzvf fish-3.1.2.tar.gz \
# create temp build
&& apk add --virtual build-temp \
		build-base \
		ncurses-dev \
&& cd fish-3.1.2 \
&& cmake . \
&& make \
&& make install \
&& apk del build-temp \
&& fish 
