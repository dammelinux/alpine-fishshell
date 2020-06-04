FROM alpine:latest

LABEL maintainer="KAI"

RUN apk update \
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
		cmake \
&& wget https://github.com/fish-shell/fish-shell/releases/download/3.1.2/fish-3.1.2.tar.gz \
&& tar -xzvf fish-3.1.2.tar.gz \
&& echo "download done" \
&& apk add --virtual build-temp \
		build-base \
		ncurses-dev \
&& cd fish-3.1.2 \
&& cmake . \
&& make \
&& make install \
&& echo "installed" \
&& apk del build-temp \
&& rm /fish-3.1.2.tar.gz \
&& echo "remove file tar" \
&& rm -rf /fish-3.1.2 \
&& echo "remove folder fish" \
&& rm -rf /var/cache/apk/* \
&& echo "remove cache" 

RUN wget -O ~/omf.fish https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install \
&& echo "download themes my fish" \
&& echo "write themes my fish" \
&& fish ~/omf.fish --noninteractive --path=~/.local/share/omf --config=~/.config/omf \
&& fish \
&& echo "installed fish completed"
