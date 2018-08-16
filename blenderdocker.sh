#!/bin/bash

echo "This script will install needed dependecies for Blender (command line) and downloads Blender (standalone) to work in Docker container (only for Linux, Ubuntu based distros)"
echo "When pressed Enter, a script updates and installs wget for downloading files by command line"
read
apt-get update
apt-get -y install wget
# cat example.list (or eg. /home/Desktop/example.list) | xargs sudo apt-get -y install
echo "When pressed Enter, will be installed needed dependecies for Blender"
read
apt-get -y install libglu1-mesa libxrender1 libxi6

echo "Provide a link for downloading Blender (only Linux)"
echo "Eg. go to blender.org, then 'Download', click a right mouse button on 'Download Blender' and choose 'Copy link location'"
echo "Also, one can scroll down and press 'Go Experimental', and repeat 'Copy link location' on Linux version"
read links
echo "Where to save? (eg. /home, /home/Dekstop)"
read dir

# for some reason it can't be downloaded by instructions above with wget, so one have to use shell hacks
ftpvar="https://ftp.halifax.rwth-aachen.de/blender/release/"

begin=${links%B*}
end=${links#*d/}
end1=${end%?}

if [[ $begin="https://www.blender.org/download"* ]]; then
  export correcturl="$ftpvar$end1"
fi

wget $correcturl -P $dir

cd $dir

echo "Extracting Blender tar file"
tar -xf blender* --checkpoint=.100

rm *.bz2

cd blender*

echo "Where is a blend. file? (if your script don't set up ligthing, camera and so on)"

read blend

echo "Where is a python file?"

read pyscript

./blender blend --background --python pyscript
