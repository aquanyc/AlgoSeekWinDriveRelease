# AlgoSeek Data Drive

## For Windows

Supported Windows desktop versions: Windows 7 SP 1 and above

Supported Windows server versions: Windows 2008 R2 SP 1 and above


#### Download

https://github.com/aquanyc/AlgoSeekWinDriveRelease/raw/master/Windows/ASWinVirtualDrive.exe

#### Install

Run ASWinVirtualDrive.exe

#### Run

Run AlgoSeek Data Drive icon from Desktop, or from AlgoSeek folder in the Start Menu

#### Notes:

For notes and step-by-step install instructions, see https://github.com/aquanyc/AlgoSeekWinDriveRelease/blob/master/NOTES.md

## For Linux

(TODO: list of supported distro's)
(early dev version release:)

#### Distros and Prerequisites

##### Ubuntu 14+

Requirement before install:

sudo apt-get udpate
sudo apt-get install libfuse-dev

##### Amazon Linux 2017+

Requirement before install:

sudo yum install fuse-devel

##### RedHat\CentOS Linux 6+

Install Python PIP, see https://www.liquidweb.com/kb/how-to-install-pip-on-centos-7/

sudo yum install fuse-devel

#### Download

wget -q --no-check-certificate https://raw.githubusercontent.com/aquanyc/AlgoSeekWinDriveRelease/master/other/linux_installer.sh -O linux_installer.sh

#### Install

sudo chmod +x linux_installer.sh

sudo ./linux_installer.sh

#### Run

cd ~/AlgoSeek

sudo python -m ASDriveApp.\_\_main\_\_

drive will be mounted to .\AlgoSeekDrive

#### Stop

sudo python -m ASDriveApp.action disconnect

#### More options

sudo python -m ASDriveApp.action 

## For Mac OS X 

TBD
