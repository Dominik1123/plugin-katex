#!/usr/bin/env bash

version="0.8.3"

git rm static/fonts/* && mkdir static/fonts

wget -q -O static/katex.min.css "https://cdn.jsdelivr.net/npm/katex@$version/dist/katex.min.css"

for url in $(wget -q -O - "https://cdn.jsdelivr.net/npm/katex@$version/dist/fonts/" | grep -ioe "npm/katex@$version/dist/fonts/[a-z0-9_-]\+[.][a-z0-9]\+")
do
	echo -n "downloading $url ... "
	wget -q -P static/fonts "https://cdn.jsdelivr.net/$url"
	echo "done"
done

git add static/fonts
