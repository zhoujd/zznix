Putty
=====

## Useful URLs

	<http://chaifeng.com/blog/2007/06/putty_200611.html>
	<https://planethawleywood.com/2017/10/12/KiTTY-vs-PuTTY>
	<https://github.com/AlexAkulov/putty-color-themes>

## TortoisePlink

	C:\set GIT_SSH=C:\Program Files\TortoiseSVN\bin\TortoisePlink.exe

## X11 forward
    
	putty -X
	putty -load x11-forward

## MTPuTTY
    
	<https://ttyplus.com/multi-tabbed-putty/>
	PuTTY location "C:\zznix\share\putty\putty.exe  -load x11-forward"


## PuTTY for win32 storing configuration into file

    <http://jakub.kotrla.net/putty/>

## Screen resizing despite -A when using PuTTY on Windows, iTerm2 on Mac OS X

    ## https://aperiodic.net/screen/appearance
    With GNU screen 2009-05-15 (git://git.savannah.gnu.org/screen.git :: 9cdf8e20), 
    the resize disable command line option -A does not work with PuTTY on Windows (0.60). 
    One way to work around this is to disable the terminal feature for remote-controlled terminal resizing in PuTTY. 
    This setting is found in “Terminal” > “Features” > “Disable remote-controlled terminal resizing”. 
    After this you do not need to specify -A since screen will now force a resizing.

    The same problem occurs with iTerm 2 on Mac OS X, and the solution is approximately the same: 
    in your profile, select the terminal tab, then mark the checkbox Disable session-initiated window resizing.
