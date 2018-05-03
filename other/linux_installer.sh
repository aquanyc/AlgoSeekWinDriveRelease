#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "Error: This script must be run as root!" 
   exit 1
fi


#TODO: check FUSE installed
#TODO: check untar available

#get bitness
bitness="32"
MACHINE_TYPE=`uname -m`
if [ ${MACHINE_TYPE} == 'x86_64' ]; then
  bitness="64"
fi



branch=${1:-master}

echo Creating AlgoSeek Directory
echo =============================
mkdir -p ~/AlgoSeek
cd ~/AlgoSeek

echo Installing Python Modules
echo =============================
wget --no-check-certificate -q https://github.com/aquanyc/AlgoSeekWinDriveRelease/raw/$branch/other/resource.tar -O resource.tar
wget --no-check-certificate -q https://github.com/aquanyc/AlgoSeekWinDriveRelease/raw/$branch/other/Linux/$bitness/ASDriveApp -O ASDriveApp
wget --no-check-certificate -q https://github.com/aquanyc/AlgoSeekWinDriveRelease/raw/$branch/other/Linux/$bitness/ASVirtualDrive -O ASVirtualDrive
#TODO: check errors
#untar without superseding old .ini file
tar xvkf resource.tar -C .
echo ============================
echo Installation Complete
echo To run the software type
echo "cd ~/AlgoSeek && sudo ASDriveApp"
echo "LEGAL NOTE: By running the software you accept End User License Agreement (EULA). To read EULA open ~/AlgoSeek/AlgoSeekEULA.rtf"
