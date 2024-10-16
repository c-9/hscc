#!/bin/bash
ZSIMPATH=$(pwd)
PINPATH=$ZSIMPATH/pin_2.14
NVMAINPATH=$ZSIMPATH/nvmain
#LIBCONFIGPATH=$ZSIMPATH/lib/libconfig
NUMCPUS=$(grep -c ^processor /proc/cpuinfo)

if [ "$1" = "z" ]
then
	echo "Compiling only ZSim ..."
	export PINPATH
	export NVMAINPATH
	scons -j$NUMCPUS
else
	echo "Compiling all ..."
	#export LIBCONFIGPATH
	#cd $LIBCONFIGPATH
	#./configure --prefix=$LIBCONFIGPATH && make install
	#cd -

	export PINPATH
	export NVMAINPATH
	scons -j$NUMCPUS
fi
