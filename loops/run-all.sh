#!/bin/sh
# requires runeo interpreter

for f in $(ls *.eo);do runeo $f;echo;done
