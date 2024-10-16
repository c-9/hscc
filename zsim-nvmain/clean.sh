#!/bin/bash
ZSIMPATH=$(pwd)
PINPATH=$ZSIMPATH/pin_kit
NVMAINPATH=$ZSIMPATH/nvmain
#LIBCONFIGPATH=$ZSIMPATH/lib/libconfig
NUMCPUS=$(grep -c ^processor /proc/cpuinfo)

if [ "$1" = "all" ]
then
	echo "Cleaning all ..."
	#export LIBCONFIGPATH
	#cd $LIBCONFIGPATH
	#make clean-libtool
	#cd -
	export PINPATH
	export NVMAINPATH
	scons -c
else
	echo "Cleaning Zsim ..."
	export PINPATH
	export NVMAINPATH
	scons -c
fi
