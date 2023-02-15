@ECHO OFF

:Ask

echo Do you have python installed? 

set /P INPUT=(Y/N): %=%
if /I "%INPUT%"=="Y" goto setup
if /I "%INPUT%"=="N" goto pythonInstall
echo Incorrect input.. & goto Ask


:pythonInstall

::script taken from https://github.com/nuket/provision-windows/blob/master/install-python.bat

set PYTHON_VERSION=2.7.6
set PYTHON_MSI=python-%PYTHON_VERSION%.msi
set PYTHON_EXE=c:\Python27\python.exe
set PYTHON_PATH=c:\Python27;c:\Python27\Scripts
set PYTHON_APPDATA=c:\Python27\AppData

set PYWIN_BUILD=218
set PYWIN_EXE=pywin32-%PYWIN_BUILD%.win32-py2.7.exe

echo,
echo ------------------------------------------------------------------
echo Downloading Python if not installed
echo ------------------------------------------------------------------
echo,

if not exist %PYTHON_EXE% (
if not exist %PYTHON_MSI% (
    curl -L -O http://python.org/ftp/python/%PYTHON_VERSION%/%PYTHON_MSI%
)
)

echo,
echo ------------------------------------------------------------------
echo Installing Python
echo ------------------------------------------------------------------
echo,

if not exist %PYTHON_EXE% (
if exist %PYTHON_MSI% (
    msiexec.exe /qb /i %PYTHON_MSI% ALLUSERS=1 ADDLOCAL=ALL
) else (
    echo Python installer package didn't seem to download correctly.
    exit /b 1
)
)

echo,
echo ------------------------------------------------------------------
echo Add Python to PATH
echo ------------------------------------------------------------------
echo,

rem Add the PYTHON_PATH to the PATH environment variable.

rem reg add "HKCU\Environment" /v PATH /t REG_EXPAND_SZ /d "%PYTHON_PATH%"
rem reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Environment" /v PATH /t REG_EXPAND_SZ /d "%PATH%;c:\Python27;c:\Python27\Scripts"
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /f /v PATH /t REG_EXPAND_SZ /d "%PATH%;%PYTHON_PATH%"

rem Set LOCALAPPDATA to APPDATA, otherwise distlib will throw errors.
rem See: https://vilimpoc.org/blog/2014/01/18/time-robbing-python-errors/

mkdir %PYTHON_APPDATA%
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Environment" /f /v LOCALAPPDATA /t REG_SZ /d "%PYTHON_APPDATA%"

rem Temporarily set LOCALAPPDATA.
set LOCALAPPDATA=%PYTHON_APPDATA%

rem Temporarily set the path, so we can use the python command.
set PATH=%PATH%;%PYTHON_PATH%

echo,
echo ------------------------------------------------------------------
echo Fix permissions so that Lib\site-packages and Scripts are read-
echo write capable for Limited User Accounts.
echo ------------------------------------------------------------------
echo,




echo,
echo ------------------------------------------------------------------
echo Download pywin32
echo ------------------------------------------------------------------
echo,

if not exist %PYWIN_EXE% (
    echo "http://downloads.sourceforge.net/project/pywin32/pywin32/Build%%20%PYWIN_BUILD%/%PYWIN_EXE%"
    curl -L -O "http://downloads.sourceforge.net/project/pywin32/pywin32/Build%%20%PYWIN_BUILD%/%PYWIN_EXE%"
    copy /y %PYWIN_EXE% c:\Python27
)


rem echo,
rem echo ------------------------------------------------------------------
rem echo Install pywin32
rem echo ------------------------------------------------------------------
rem echo,

rem if exist %PYWIN_EXE% (
rem     start /wait %PYWIN_EXE%
rem ) else (
rem     echo pywin32 installer didn't seem to download correctly.
rem     exit /b 1
rem )

echo,
echo ------------------------------------------------------------------
echo Add easy_install
echo ------------------------------------------------------------------
echo,

if not exist ez_setup.py (
    curl -O https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py
)

python ez_setup.py

echo,
echo ------------------------------------------------------------------
echo Add pip
echo ------------------------------------------------------------------
echo,

if not exist get-pip.py (
    curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py
)

python get-pip.py

echo,
echo ------------------------------------------------------------------
echo Add virtualenv
echo ------------------------------------------------------------------
echo,

pip install virtualenv

echo,
echo ------------------------------------------------------------------
echo Fix Lib\site-packages permissions to include BUILTIN\Users:R
echo according to cacls output.
echo
echo Have to do this recursively all the way down.
echo ------------------------------------------------------------------
echo,

echo y| cacls c:\Python27\Lib\site-packages\*.* /T /E /G BUILTIN\Users:R

echo,
echo ------------------------------------------------------------------
echo Python %PYTHON_VERSION%, easy_install, pip, and virtual installed!
echo ------------------------------------------------------------------
echo,

echo Proceeding to setup...
pause
clear

goto setup

:setup

echo Setup has started!

ECHO Installing requirements from requirements.txt....
echo 

pip install -r ./requirements.txt
echo 

git clone https://github.com/lilmayofuksu/pyenet --recursive && cd pyenet
echo 

python setup.py build
echo 

python setup.py install
pause
clear

echo To launch CockPY, run the 'launch.bat'.




