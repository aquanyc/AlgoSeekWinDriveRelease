#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "Error: This script must be run as root!" 
   exit 1
fi


#TODO: check FUSE installed

echo =============================
echo Installing AlgoSeek Drive
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

echo Installing Python Modules
echo =============================
wget --backups=1 https://github.com/aquanyc/AlgoSeekWinDriveRelease/raw/$branch/other/fusepy.zip
wget --backups=1 https://github.com/aquanyc/AlgoSeekWinDriveRelease/raw/$branch/other/ASPythonVirtualDrive.zip
wget --backups=1 https://github.com/aquanyc/AlgoSeekWinDriveRelease/raw/$branch/other/ASWinVirtualDrive.zip
pip install --no-cache-dir -U -I fusepy.zip ASPythonVirtualDrive.zip ASWinVirtualDrive.zip

echo INSTALLATION COMPLETE