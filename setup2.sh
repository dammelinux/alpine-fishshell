#!/bin/sh
wget -O ~/omf.fish https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install \
&& echo "download themes my fish" \
&& echo "write themes my fish" \
&& fish ~/omf.fish --noninteractive --path=~/.local/share/omf --config=~/.config/omf \
&& fish \
&& echo "installed fish completed"