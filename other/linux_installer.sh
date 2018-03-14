#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "Error: This script must be run as root!" 
   exit 1
fi


#TODO: check FUSE installed

echo =============================
echo Installing AlgoSeek Data Drive
echo =============================
echo Checking Python
echo =============================


ret=`python -c 'import sys; print ("%i" % int(sys.hexversion > 0x02060000));'`
if [ $ret -eq 0 ]; then
   echo "Error: Python version 2.6 or higher is required."
   exit 1
fi

echo Updating Python PIP
echo =============================
wget --no-check-certificate https://bootstrap.pypa.io/ez_setup.py -nv -O - | python 2>&1 &>> install.log
easy_install pip &>> install.log
pip install -U pip

branch=${1:-master}

echo Creating AlgoSeek Directory
echo =============================
mkdir -p ~/AlgoSeek
cd ~/AlgoSeek

echo Installing Python Modules
echo =============================
wget --no-check-certificate -q https://github.com/aquanyc/AlgoSeekWinDriveRelease/raw/$branch/other/fusepy.zip -O fusepy.zip
wget --no-check-certificate -q https://github.com/aquanyc/AlgoSeekWinDriveRelease/raw/$branch/other/ASPythonVirtualDrive.zip -O ASPythonVirtualDrive.zip
wget --no-check-certificate -q https://github.com/aquanyc/AlgoSeekWinDriveRelease/raw/$branch/other/ASWinVirtualDrive.zip -O ASWinVirtualDrive.zip
wget --no-check-certificate -q https://github.com/aquanyc/AlgoSeekWinDriveRelease/raw/$branch/other/resource.tar -O resource.tar
python -c 'import tarfile; tar = tarfile.open("resource.tar"); tar.extractall();'
pip install --no-cache-dir ./fusepy.zip ./ASPythonVirtualDrive.zip ./ASWinVirtualDrive.zip
echo ============================
echo Installation Complete
echo To run the software type
echo "cd ~/AlgoSeek && sudo python -m ASDriveApp.__main__"
echo "LEGAL NOTE: By running the software you accept End User License Agreement (EULA). To read EULA open ~/AlgoSeek/AlgoSeekEULA.rtf"
