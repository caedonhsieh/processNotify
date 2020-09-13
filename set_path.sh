#!/bin/sh
DIR=$(dirname ${BASH_SOURCE[0]})
if [ $DIR = '.' ]; then
	DIR=$PWD
fi
echo export PATH="\$PATH:$DIR" >> ~/.bash_profile
source ~/.bash_profile
