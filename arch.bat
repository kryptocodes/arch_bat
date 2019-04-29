#to install arch linux 
@REM https://github.com/hakuna-m/wubiuefi/blob/master/src/wubi/application.py
@ECHO OFF
TITLE ARCH - Arch linux Installer For Windows
#download wubi latest version and keep in the same dir
ECHO Enter the url of arch linux link(ISO ONLY)
SET /P ArchISOU= 
bitsadmin /transfer archiso "%ArchISOU%" "%cd%\arch.iso"
ECHO Launching... (NOTE:It dosen't install ubuntu, It's using the arguments to replace ISO and Distro.)
#it changes ubuntu to arch 
%cd%\wubi.exe --distro Arch --isopath %cd%\arch.iso
