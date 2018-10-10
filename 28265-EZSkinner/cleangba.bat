@echo off

IF NOT EXIST RomBuildPro.dummy goto bad
copy /Y RomBuildPro.dummy gba\RomBuildPro.rom
echo RomBuildPro.rom copied

IF NOT EXIST gba\.shell\AppleDict.dat goto skip1
del /f gba\.shell\AppleDict.dat
echo gba\AppleDict.dat deleted

:skip1
IF NOT EXIST gba\.shell\bmp\EZWordBG.bmp goto skip2
del /f gba\.shell\bmp\EZWordBG.bmp
echo gba\.shell\bmp\EZWordBG.bmp deleted

:skip2
IF NOT EXIST gba\.shell\bmp\Thumbs.db goto skip3
del /f /a:h gba\.shell\bmp\Thumbs.db
echo gba\.shell\bmp\Thumbs.db deleted

:skip3
IF NOT EXIST gba\.shell\bmp\worddict.bmp goto skip4
del /f gba\.shell\bmp\worddict.bmp 
echo gba\.shell\bmp\worddict.bmp deleted

:skip4
IF NOT EXIST gba\.shell\bmp\wordmenubg.bmp goto skip5
del /f gba\.shell\bmp\wordmenubg.bmp
echo gba\.shell\bmp\wordmenubg.bmp deleted

:skip5
IF NOT EXIST gba\.shell\bmp\wordpre.bmp goto skip6
del /f gba\.shell\bmp\wordpre.bmp
echo gba\.shell\bmp\wordpre.bmp deleted

:skip6
IF NOT EXIST gba\.shell\bmp\wordstudy.bmp goto skip7
del /f gba\.shell\bmp\wordstudy.bmp
echo gba\.shell\bmp\wordstudy.bmp deleted

:skip7
IF NOT EXIST gba\.shell\bmp\wordstudy_client.bmp goto skip8
del /f gba\.shell\bmp\wordstudy_client.bmp
echo gba\.shell\bmp\wordstudy_client.bmp deleted

:skip8
IF NOT EXIST gba\.shell\bmp\wordvip.bmp goto skip9
del /f gba\.shell\bmp\wordvip.bmp
echo gba\.shell\bmp\wordvip.bmp deleted

:skip9
IF NOT EXIST gba\.shell\bmp\wordmenu.bmp goto skip10
del /f gba\.shell\bmp\wordmenu.bmp
echo gba\.shell\bmp\wordmenu.bmp deleted

:skip10
IF NOT EXIST gba\.shell\bmp\preview.jpg goto skip11
del /f gba\.shell\bmp\preview.jpg
echo gba\.shell\bmp\preview.jpg deleted

:skip11

echo Done checking for extra EZ3 files
