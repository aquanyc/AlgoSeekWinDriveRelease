# AlgoSeek Virtual Drive

(TODO: Some brief marketing text here)

## For Windows

(TODO: list of Windows versions + requirements)

#### Download

https://github.com/aquanyc/AlgoSeekWinDriveRelease/raw/master/Windows/ASWinVirtualDrive.exe

#### Install

Run ASWinVirtualDrive.exe

#### Run

Run AlgoSeekDrive icon from Desktop, or from AlgoSeek folder in the Start Menu

## For Linux

(TODO: list of supported distro's)
(early dev version release:)

#### Distros and Prerequisites

##### Ubuntu 14+

Requirement before install:

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

mkdir -p algoseek

cd algoseek

sudo python -m ASDriveApp.__main__

## For Mac OS X 

TBD