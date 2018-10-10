@echo off
IF NOT EXIST RomBuildPro.dummy goto bad2
IF NOT EXIST ezfla_up.bin goto bad
IF NOT EXIST gba\nul goto badgba
IF NOT EXIST nds\nul goto badnds

copy /Y RomBuildPro.dummy /gba/RomBuildPro.rom

echo.
echo checking for extra EZ3 files in GBA skin
call cleangba.bat
echo.
echo creating GBA skinned ROM...
GBA\RomBuildPro.exe  FileSystem  gba.bin

echo creating NDS skinned GBFS...
echo.
rem gbfs nds.bin ./nds/*
gbfs nds.bin nds\*

echo.
echo attempting to skin ezfla_up.bin ...
echo.
ez4skin.exe

rem del /Q gba.bin
rem del /Q nds.bin

echo.
echo DONE! Skins updated.
echo.
echo Now use the file ezfla_up.bin as a normal update.
echo.
echo if it fails on reboot, place an official update
echo back onto your miniSD and boot holding the R button
echo.
goto end

:bad
echo ezfla_up.bin does not exist.
goto end

:bad2
echo RomBuildPro.dummy does not exist.
goto end

:badgba
echo GBA directory does not exist.
goto end

:badnds
echo NDS directory does not exist.
goto end

:end
rem pause