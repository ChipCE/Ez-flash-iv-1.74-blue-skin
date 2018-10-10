@echo off

IF NOT EXIST ez3gba\RomBuildPro.rom goto bad
copy /Y ez3gba\RomBuildPro.rom gba\RomBuildPro.rom

IF EXIST gba\.shell\AppleDict.dat goto skip1
copy /Y ez3gba\.shell\AppleDict.dat gba\.shell\AppleDict.dat
echo AppleDict.dat copied

:skip1
IF EXIST gba\.shell\bmp\EZWordBG.bmp goto skip2
copy /Y ez3gba\.shell\bmp\EZWordBG.bmp gba\.shell\bmp\EZWordBG.bmp
echo EZWordBG.bmp copied

:skip2
IF NOT EXIST gba\.shell\bmp\Thumbs.db goto skip3
del /f /a:h gba\.shell\bmp\Thumbs.db
echo Thumbs.db deleted

:skip3
IF EXIST gba\.shell\bmp\worddict.bmp goto skip4
copy /Y ez3gba\.shell\worddict.bmp gba\.shell\bmp\worddict.bmp 
echo worddict.bmp copied

:skip4
IF EXIST gba\.shell\bmp\wordmenubg.bmp goto skip5
copy /Y ez3gba\.shell\bmp\wordmenubg.bmp gba\.shell\bmp\wordmenubg.bmp
echo wordmenubg.bmp copied

:skip5
IF EXIST gba\.shell\bmp\wordpre.bmp goto skip6
copy /Y ez3gba\.shell\bmp\wordpre.bmp gba\.shell\bmp\wordpre.bmp
echo wordpre.bmp copied

:skip6
IF EXIST gba\.shell\bmp\wordstudy.bmp goto skip7
copy /Y ez3gba\.shell\bmp\wordstudy.bmp gba\.shell\bmp\wordstudy.bmp
echo wordstudy.bmp copied

:skip7
IF EXIST gba\.shell\bmp\wordstudy_client.bmp goto skip8
copy /Y ez3gba\.shell\bmp\wordstudy_client.bmp gba\.shell\bmp\wordstudy_client.bmp
echo wordstudy_client.bmp copied

:skip8
IF EXIST gba\.shell\bmp\wordvip.bmp goto skip9
copy /Y ez3gba\.shell\bmp\wordvip.bmp gba\.shell\bmp\wordvip.bmp
echo wordvip.bmp copied

:skip9
IF EXIST gba\.shell\bmp\wordmenu.bmp goto skip10
copy /Y ez3gba\.shell\bmp\wordmenu.bmp gba\.shell\bmp\wordmenu.bmp
echo wordmenu.bmp copied

:skip10
IF NOT EXIST gba\.shell\bmp\preview.jpg goto skip11
del /Y gba\.shell\bmp\preview.jpg
echo preview.jpg deleted

:skip11
echo Done restoring EZ3 files

IF NOT EXIST gba\RomBuildPro.exe goto ouch
gba\RomBuildPro.exe  FileSystem  loader_GBA.bin
goto pastouch

:ouch
echo RomBuildPro.exe not found!
goto end

:pastouch
IF NOT EXIST loader_GBA.bin goto crap
echo loader_GBA.bin generated successfully. Place it in your sysbin folder and overwrite the existing loader. If you are running EZManager 2.08 or older then rename it to loader.bin. Open up EZManager and flash the GBA loader (or just loader for 2.08 or older) to your EZ3.
goto end

:crap
echo loader_GBA.bin not found!
goto end

bad:
echo ez3gba\RomBuildPro.rom not found! 

:end
pause