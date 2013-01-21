#!/bin/bash

dir=$1
amount=$2
function hc(){
 ~/FakeRoot/bin/herbstclient "$@"
 }

hc split $1 $2
case $dir in
	v*) hc shift down;;
	h*) hc shift right;;
esac
