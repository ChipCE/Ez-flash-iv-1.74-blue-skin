EZ4skin - revision 5 (July 10 2006)
--------------------------------------
Tested with 07-10 EZ4 updater files (ezfla_up.bin)

\gba\RomBuildPro.rom should no longer matter, it is a 0byte file now.

To change skins on your GBA and NDS EZ4 menus, first add the latests update
and call it "ezfla_up.bin" (without the quotes), then simply go into the 
folders and alter the images, then double click on Skin_it.bat.

It will report any errors or inconsistancies if there are any.

NDS skin - in the folder \nds
GBA skin - in the folder \gba\.shell\bmp

** IMPORTANT **
Do NOT change the image size or depth, this will result in problems.

If you are using existing EZ3 PDA skins, make sure to only replace the images
that are included in this release.

One thing I have noticed, and most people do this - thumbs.db is a hidden file
and sometimes can get quite large. If it skips the NDS skin, try going into
your folder options, show hidden files and delete it first.

If you run into issues and can't use your EZ4, 
simply put an official update back on and boot 
your GBA/DS holding the R button
**   END NOTE   **

----------------------Text Skinning----------------------------------------
call EZ4skin in the directory with a file after.. ie: EZ4skin.exe text.txt
or simply run the Skin&txt.bat

My edited version of the texts I have extracted is in text.txt
a generically set up one is in ori_txt.txt

here is how it works:
make a text file, and on each line have this:
origional text;new text;#
orgional text and new text must be the same size. You can put spaces to remove
characters, but they must be the same size. The # is the occurance of the text
in the updater file, if its the first one then use 1, if its the second you want
to replace, use 2.

The text skinning is not "smart" - it will only replace the text on the left,
with the text on the right. Because EZ rebuilds the file and the text
moves, I could think of no better way to do it.

The top of the file is GBA texts
after the [SD]NDSLoader is NDS texts (or what I found after looking briefly)
Where I was able to find the chinese text, it is on the line above the english version
of the same thing.
--------------------------------------------------------------------------------


Thanks to the creators of the EZPDA skinner that the GBA skin is based on
Thanks to PinEight and the other contributors for GBFS (for DS)
Thanks to FAST6191 for the Ninja Scroll skin!
Thanks to the Sosuke forum users for pointing out my mistakes!

And last but not least, thanks to EZ for the excellent miniSD adapter and
for furthering the open standards by not crypting/mirroring and otherwise
making this more complicated than it actually needs to be.


When a new update is released, I will likely analyze and test it to be sure this
tool will still work. Check sosuke for updates if it breaks, I will try to keep it working
but I will make no promises.

Questions? Comments? Concerns?
Come join us at Sosuke's EZ flash board - http://sosuke.com/ezflash/
I'm sure someone can help.

Bug reports? Praise? Donations? KEEP YOUR MONEY! I DONT WANT DONATIONS! :P
cory1492@gmail.com

Source code provided for entertainment only. C'mon coders, you should be able to
get a decent laugh out of my slop! (even though it works)
---------------------------------
History
-------
R6  - updated text files for new strings added with the saver forced/auto settings
R5f - stupid mistake in the batch files, called clean.bat instead of cleangba.bat
R5  - added batch file to clean extra files from EZ3 skins out automatically
R4  - fixed a few things (output file is now exactly the size it needs to be)
    - added text skinner and fixed up the lousy findstring functions I used before
R3  - major fix - the NDS skin wasnt being replaced, also, no longer limited to file sizes smaller or equal to the origional NDS skin.
R2f - fix in the batch file for PC's without posix in the background
R2  - adjust for a new method of skinning GBA that wont require updating the rombuilder rom file
R1  - initial release
