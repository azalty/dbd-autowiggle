#SingleInstance, Force

Gui, New, , LICENSE
Gui, Font, cWhite s15

Gui, Add, Text, x10 y10, LICENSE
Gui, Font, s10
Gui, Add, Text, x20 y30, 
(BSD 3-Clause License

Copyright (c) 2018, rlevet
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice,
  this list of conditions and the following disclaimer in the documentation
  and/or other materials provided with the distribution.

* Neither the name of the copyright holder nor the names of its
  contributors may be used to endorse or promote products derived from
  this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
)

Gui, Add, Button, x100 y500 w200 h30 gLicenseAgree, I agree with this.
Gui, Add, Button, x350 y500 w200 h30 gLicenseNoAgree, I don't agree with this.

Gui, Color, Black
Gui, Show,w650 h550

return
LicenseAgree:
Gui, Destroy
GoSub, Main
return
LicenseNoAgree:
ExitApp
return


Main:

Gui, New, , Autowiggle:DBD [ZQSD] V1.0.4
Gui, Font, cBlack s12

Gui, Add, Text, x10 y10 gInfos, Autowiggle (Dead By Daylight) [ZQSD] :

Gui, Font, s10
Gui, Add, Button, x20 y40 w100 h30 gClosescript, Close script
Gui, Add, Button, x200 y40 w100 h30 gHelp, Help!

Gui, Color, White
Gui, Show,w320 h100

return

GuiClose:
	ExitApp
	return

*F::
Loop
{
	Send, {q Down}
	Sleep, 50
	Send, {d Down}
	Sleep, 50
	Send, {q Up}
	Sleep, 50
	Send, {d Up}
	Sleep, 50
}until !GetKeyState("F","P")
return

F10::ExitApp

Closescript:
Exitapp


Help:

Gui, Destroy

Gui, New, , Autowiggle:DBD [ZQSD] V1.0.4 - Help
Gui, Font, cWhite s15

Gui, Add, Text, x10 y10, Help :
Gui, Font, s10
Gui, Add, Text, x20 y50, Press F to toggle AutoWiggle and release it to stop.`n`nTo unload the script, click F10, close window or click "Close script".`n`nThis is the ZQSD version. Take the other script for the WASD.`n`nVersion 1.0.4`n`n`nWARNING: Use this as your own risk. You SHOULDN'T be banned for that`nbut we never know.`nMacros are normally not accepted by the game but no-one as`nbeen banned yet and devs said nothing.

Gui, Add, Button, x150 y300 w200 h30 gOkay, Ok, got it!

Gui, Color, Black
Gui, Show,w500 h350

return

Okay:
Gui, Destroy
GoSub, Main
return




Infos:
Gui, Destroy

Gui, New, , Autowiggle:DBD [ZQSD] V1.0.4 - Infos
Gui, Font, cWhite s15

Gui, Add, Text, x10 y10, Infos:
Gui, Font, s10
Gui, Add, Text, x20 y50, Version info:`n`nVersion 1.0.4
Gui, Font, cBlue
Gui, Add, Text, x20 y200 gRunDownloadPage, -> Official download and updates page <-


Gui, Add, Button, x150 y300 w200 h30 gOkay, OK!

Gui, Color, Black
Gui, Show,w500 h350
return

RunDownloadPage:
run "https://github.com/rlevet/dbd-autowiggle/releases"
return