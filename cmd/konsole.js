//Konsole.js - alternative to the Run Utility example provided above
//JavaScript to display a remote konsole without a local Command Prompt
var wshell = new ActiveXObject('WScript.Shell');
wshell.Run('"C:\\zznix\\zach\\share\\putty\\plink.exe" -load x11-forward gedit', 0, false);
