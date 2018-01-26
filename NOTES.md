## Windows step-by-step installation

1. Download and install WinFSP https://github.com/billziss-gh/winfsp/releases/download/v1.2POST1/winfsp-1.2.17346.msi
    Select to install all components
2. Download and install Python 2.7 https://www.python.org/ftp/python/2.7.14/python-2.7.14.msi , do the following selections during the install
    - Install just for me
    - Installation directory: C:\Program Files (x86)\AlgoSeek\Python27
    - Select 'Tcl\Tk', 'pip' components in 'Customize Python' dialog
3. Download and install AlgoSeek Drive modules https://github.com/aquanyc/AlgoSeekWinDriveRelease/raw/master/Windows/updates/PythonModules.msi
4. If step 3 fails:
    - Download zip modules to C:\Program Files (x86)\AlgoSeek 
      https://github.com/aquanyc/AlgoSeekWinDriveRelease/raw/master/other/ASPythonVirtualDrive.zip
      https://github.com/aquanyc/AlgoSeekWinDriveRelease/raw/master/other/ASWinVirtualDrive.zip 
      https://github.com/aquanyc/AlgoSeekWinDriveRelease/blob/master/other/fusepy.zip
    - Run cmd.exe with Administrator privilages. 
    - In cmd.exe console type: cd /D C:\Program Files (x86)\AlgoSeek
    - In cmd.exe console type: python -m pip install -U -I ./fusepy.zip ./ASPythonVirtualDrive.zip ./ASWinVirtualDrive.zip
    - In cmd.exe console type to run the program: python -m ASDriveApp
