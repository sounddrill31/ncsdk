#!/bin/bash

#test for python already installed for opencv
python3 -c "import cv2" > /dev/null 2>&1
if [ $? -eq 0 ] ;
then
	echo "";
	echo "OpenCV already setup for python";
	echo "";
	exit 0
fi;

## Install OpenCV
if [[ -d "/home/$(whoami)/intel_venv/bin" ]];then
    source /home/$(whoami)/intel_venv/bin/activate
else
    python3 -m venv /home/$(whoami)/intel_venv
    source /home/$(whoami)/intel_venv/bin/activate
fi

echo "Installing opencv python for non-Raspbian";
pip3 install opencv-python
pip3 install opencv-contrib-python