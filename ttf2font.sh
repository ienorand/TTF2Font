#!/bin/bash

if [ -e "ttf2font" ]; then
	exec ttf2font $@
else
	echo "Your platform does not have a pre-compiled binary."
	echo "Please follow the following steps to build one:"
	echo "1) Ensure you have the SDL, libpng, and zlib *DEVELOPMENT* libraries installed."
	echo "2) Change directory to src/ and type \"make clean all\" or \"gmake clean all\"."
	echo "3) If the build succeeds, return to this directory and run this script again."
fi

